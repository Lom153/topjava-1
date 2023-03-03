package ru.javawebinar.topjava.model;

import java.time.LocalDateTime;

public class MealTo {
    private static int counter = 0;

    private final int id;

    public int getId() {
        return id;
    }

    private final LocalDateTime dateTime;

    private final String description;

    private final int calories;

    private final boolean excess;

    public LocalDateTime getDateTime() {
        return dateTime;
    }

    public String getDescription() {
        return description;
    }

    public int getCalories() {
        return calories;
    }

    public boolean isExcess() {
        return excess;

    }

    public MealTo(LocalDateTime dateTime, String description, int calories, boolean excess) {
        this.dateTime = dateTime;
        this.description = description;
        this.calories = calories;
        this.excess = excess;
        this.id = counter++;
    }

    @Override
    public String toString() {
        return "MealTo{" +
                "dateTime=" + dateTime +
                ", description='" + description + '\'' +
                ", calories=" + calories +
                ", excess=" + excess +
                '}';
    }
}