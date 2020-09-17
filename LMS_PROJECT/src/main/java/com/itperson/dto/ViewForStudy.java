package com.itperson.dto;

public class ViewForStudy extends MyCourse {
	private int daysLeft;
	private int countContents;
	private int countRemaingContnents;
	private double memoryRate;
	
	public int getDaysLeft() {
		return daysLeft;
	}
	public void setDaysLeft(int daysLeft) {
		this.daysLeft = daysLeft;
	}
	public int getCountContents() {
		return countContents;
	}
	public void setCountContents(int countContents) {
		this.countContents = countContents;
	}
	public int getCountRemaingContnents() {
		return countRemaingContnents;
	}
	public void setCountRemaingContnents(int countRemaingContnents) {
		this.countRemaingContnents = countRemaingContnents;
	}
	public int getTodayContents(){
		return (int) Math.ceil(this.countRemaingContnents / (float) daysLeft) ;
	}
	public String getProgressRate() {
		return  String.format("%.1f", 100-(100.0/this.getCountContents()) * this.getCountRemaingContnents());
	}
	public String getMemoryRate() {
		return  String.format("%.1f", this.memoryRate);
	}
	public void setMemoryRate(double memoryRate) {
		this.memoryRate = memoryRate;
	}
}
