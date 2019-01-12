package mac.dietapp.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "customers")
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "name")
	private String name;

	@Column(name = "surname")
	private String surname;

	@Column(name = "phoneNumber")
	private String phoneNumber;

	@Column(name = "gender")
	private String gender;

	@Column(name = "age")
	private float age;

	@Column(name = "height")
	private float height;

	@Column(name = "weight")
	private float weight;

	@Column(name = "activity")
	private float activity;

	@Column(name = "goal")
	private String goal;

	@Column(name = "proteinPerKgOfBodyMass")
	private float proteinPerKgOfBodyMass;

	@Column(name = "percOfCalsFromFats")
	private float percOfCalsFromFats;

	@Transient
	private float goalCoef;

	@Transient
	private float bmr;

	@Transient
	private float totalMetabolism;

	@Transient
	private float calories;

	@Transient
	private float protein;

	@Transient
	private float carbs;

	@Transient
	private float fats;

	public Customer() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public float getAge() {
		return age;
	}

	public void setAge(float age) {
		this.age = age;
	}

	public float getHeight() {
		return height;
	}

	public void setHeight(float height) {
		this.height = height;
	}

	public float getWeight() {
		return weight;
	}

	public void setWeight(float weight) {
		this.weight = weight;
	}

	public float getActivity() {
		return activity;
	}

	public void setActivity(float activity) {
		this.activity = activity;
	}

	public String getGoal() {
		return goal;
	}

	public void setGoal(String goal) {
		this.goal = goal;
	}

	public float getProteinPerKgOfBodyMass() {
		return proteinPerKgOfBodyMass;
	}

	public void setProteinPerKgOfBodyMass(float proteinPerKgOfBodyMass) {
		this.proteinPerKgOfBodyMass = proteinPerKgOfBodyMass;
	}

	public float getPercOfCalsFromFats() {
		return percOfCalsFromFats;
	}

	public void setPercOfCalsFromFats(float percOfCalsFromFats) {
		this.percOfCalsFromFats = percOfCalsFromFats;
	}

	public float getGoalCoef() {
		if (this.goal.equals("Utrata tkanki tłuszczowej: 0,75 kg/tydz."))
			return -750;
		else if (this.goal.equals("Utrata tkanki tłuszczowej: 0,50 kg/tydz."))
			return -500;
		else if (this.goal.equals("Utrata tkanki tłuszczowej: 0,25 kg/tydz."))
			return -250;
		else if (this.goal.equals("Budowanie masy: 0,25 kg/tydz."))
			return 250;
		else if (this.goal.equals("Budowanie masy: 0,50 kg/tydz."))
			return 500;
		else
			return 0;
	}

	public void setGoalCoef(float goalCoef) {
		this.goalCoef = goalCoef;
	}

	public float getBmr() {
		if (this.gender.equals("M"))
			return (9.99F * this.weight + 6.25F * this.height - 4.92F * this.age + 5);
		else
			return (9.99F * this.weight + 6.25F * this.height - 4.92F * this.age - 161);
	}

	public void setBmr(float bmr) {
		this.bmr = bmr;
	}

	public float getTotalMetabolism() {
		return this.getBmr() * this.activity;
	}

	public void setTotalMetabolism(float totalMetabolism) {
		this.totalMetabolism = totalMetabolism;
	}

	public float getCalories() {
		return this.getTotalMetabolism() + this.getGoalCoef();
	}

	public void setCalories(float calories) {
		this.calories = calories;
	}

	public float getProtein() {
		return this.weight * this.proteinPerKgOfBodyMass;
	}

	public void setProtein(float protein) {
		this.protein = protein;
	}

	public float getCarbs() {
		return (this.getCalories() - this.getFats() * 9 - this.getProtein() * 4) / 4;
	}

	public void setCarbs(float carbs) {
		this.carbs = carbs;
	}

	public float getFats() {
		return ((this.percOfCalsFromFats / 100) * this.getCalories()) / 9;
	}

	public void setFats(float fats) {
		this.fats = fats;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", surname=" + surname + ", phoneNumber=" + phoneNumber
				+ ", gender=" + gender + ", age=" + age + ", height=" + height + ", weight=" + weight + ", activity="
				+ activity + ", goal=" + goal + ", proteinPerKgOfBodyMass=" + proteinPerKgOfBodyMass
				+ ", percOfCalsFromFats=" + percOfCalsFromFats + ", goalCoef=" + goalCoef + ", bmr=" + bmr
				+ ", totalMetabolism=" + totalMetabolism + ", calories=" + calories + ", protein=" + protein
				+ ", carbs=" + carbs + ", fats=" + fats + "]";
	}

}
