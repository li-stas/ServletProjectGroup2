package test.model;

public class Student {
    private int id;
    private String name;
    private float scholarship;

    public Student(int id, String name, float scholarship) {
        this.id = id;
        this.name = name;
        this.scholarship = scholarship;
    }

    public Student(String name, float scholarship) {
        this.name = name;
        this.scholarship = scholarship;
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

    public float getScholarship() {
        return scholarship;
    }

    public void setScholarship(float scholarship) {
        this.scholarship = scholarship;
    }

    @Override
    public String toString() {
        return "model.Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", scholarship=" + scholarship +
                '}';
    }
}
