package mac.dietapp.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class Product {

	@Id
	@Column(name = "id")
	private int id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "caloriesPer100g")
	private float caloriesPer100g;
	
	@Column(name = "carbsPer100g")
	private float carbsPer100g;
	
	@Column(name = "proteinPer100g")
	private float proteinPer100g;
	
	@Column(name = "fatsPer100g")
	private float fatsPer100g;
	
	public Product() {
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

	public float getCaloriesPer100g() {
		return caloriesPer100g;
	}

	public void setCaloriesPer100g(float caloriesPer100g) {
		this.caloriesPer100g = caloriesPer100g;
	}

	public float getCarbsPer100g() {
		return carbsPer100g;
	}

	public void setCarbsPer100g(float carbsPer100g) {
		this.carbsPer100g = carbsPer100g;
	}

	public float getProteinPer100g() {
		return proteinPer100g;
	}

	public void setProteinPer100g(float proteinPer100g) {
		this.proteinPer100g = proteinPer100g;
	}

	public float getFatsPer100g() {
		return fatsPer100g;
	}

	public void setFatsPer100g(float fatsPer100g) {
		this.fatsPer100g = fatsPer100g;
	}
}
