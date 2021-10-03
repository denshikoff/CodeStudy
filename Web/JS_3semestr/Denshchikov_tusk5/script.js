function main(){
    //ввод данных
    let thisDateInput = prompt("Введите текущий месяц и год");
    let holiday = prompt("Введите праздники");

    let holidayArrDate = [];
    let arrHolidayStr = [];
    if(holiday != ""){
        arrHolidayStr = holiday.split(", ");
    }


    //конвертация из строк в формат даты
    let thisDate = getThisDate(thisDateInput);
    let daysInMonth =  daysInMonths(thisDate.getMonth(), thisDate.getFullYear());
    let countJob = daysInMonth;

    //высчитываем рабочие часы
    countJob =  deleteWeekend(thisDate, countJob, daysInMonth);
    countJob = deleteHoliday(arrHolidayStr, holidayArrDate, countJob, thisDate);



    //вычисляем дни выдачи зарплат
    thisDate.setDate(15)
    let oneDaySalary = makeDaySalary(thisDate, holidayArrDate);
    thisDate.setDate(daysInMonth - 1);
    let twoDaySalary = makeDaySalary(thisDate, holidayArrDate);

    //вывод
    alert("Количество рабочих часов: " + countJob * 8 + '\n' +
        "Даты выплат: " + oneDaySalary + ", " + twoDaySalary);
}

//вычисление общего количества дней в месяце
function daysInMonths (month, year) {
    return new Date(year, month+1, 0).getDate();
}

//высчитываем дни зарплат
function makeDaySalary(day, holidayArr) {
    while(holidayArr.includes(day.getDate()) ||  day.getDay() == 0 || day.getDay() == 6) {
        day.setDate(day.getDate() - 1);
    }
    return day.getDate();
}

function getThisDate(InputDate) {
    return new Date(Number(InputDate.substr(3, 4)), Number(InputDate.substr(0, 2))-1)
}

//вычитаем выходные
function deleteWeekend(thisDate, count, daysInMonth) {
    for (let i = 1; i <= daysInMonth; i++) {
        thisDate.setDate(i);
        if(thisDate.getDay() == 0 || thisDate.getDay() == 6) {
            count--;
        }
    }
    return count;
}

//удаление праздничных дней
function deleteHoliday(arrHolidayStr, arrHolidayDate, countWork, thisDate) {
    arrHolidayStr.forEach(function(item, i, arr){
        item = new Date(thisDate.getFullYear(), thisDate.getMonth(), Number(arrHolidayStr[i].substr(0,2)), 0, 0, 0, 0);
        arrHolidayDate[i] = item.getDay() == 6 ? item.getDate()-1:item.getDate();
        if(item.getDay() != 0){
            countWork--;
        }
    });
    return countWork;
}

main();


