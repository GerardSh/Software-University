﻿int n = int.Parse(Console.ReadLine());

int years = n * 100;
int days = (int)(years * 365.2422);
long hours = days * 24;
long minutes = hours * 60;


Console.WriteLine($"{n} centuries = {years} years = {days} days = {hours} hours = {minutes} minutes");