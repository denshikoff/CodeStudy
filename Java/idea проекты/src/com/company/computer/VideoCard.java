package com.company.computer;

public class VideoCard extends Detail {
    private int volume;
    private int rate;
    VideoCard(int id, int price) {
        super(id, price);
    }

    public int getVolume() {
        return volume;
    }

    public void setVolume(int volume) {
        this.volume = volume;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }
}
