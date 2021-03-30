//ввод данных
let thisDateInput = prompt("Введите текущий месяц и год");
let holiday = prompt("Введите праздники");

//конвертация из строк в формат даты
let thisDate = new Date(Number(thisDateInput.substr(3, 4)), Number(thisDateInput.substr(0, 2))-1);
let arrHolidayStr = holiday.split(", ");
let holidayArrDate = [];

//вычисление общего количества дней в месяце
function daysInMonths (month, year) {
    return new Date(year, month+1, 0).getDate();
}
let daysInMonth =  daysInMonths(thisDate.getMonth(), thisDate.getFullYear());
let countJob = daysInMonth;

//вычитаем выходные
for (let i = 1; i <= daysInMonth; i++) {
    thisDate.setDate(i);
    if(thisDate.getDay() == 0 || thisDate.getDay() == 6) {
        countJob--;
    }
}

//формирование массива праздников и удаляем нерабочие дни
arrHolidayStr.forEach(function(item, i, arr){
   item = new Date(thisDate.getFullYear(), thisDate.getMonth(), Number(arrHolidayStr[i].substr(0,2)), 0, 0, 0, 0);
   holidayArrDate[i] = item.getDay() == 6 ? item.getDate()-1:item.getDate(); 
   if(item.getDay() != 0){
       countJob--;
   }
});

//высчитываем дни зарплат
function makeDaySalary(day) {
    while(holidayArrDate.includes(day.getDate()) ||  day.getDay() == 0 || day.getDay() == 6) {
        day.setDate(day.getDate() - 1);
    }
    return day.getDate();
}

thisDate.setDate(15)
let oneDaySalary = makeDaySalary(thisDate);
thisDate.setDate(daysInMonth - 1);
let twoDaySalary = makeDaySalary(thisDate);
alert("Количество рабочих часов: " + countJob * 8 + '\n' +
"Даты выплат: " + oneDaySalary + ", " + twoDaySalary);
