package bean;

public class News {
	private int id;
	
	private String name;
	
	private String description;
	
	private String detail;

	private String created_at;
	
	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public News(int id, String name, String description, String detail, String created_at) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.detail = detail;
		this.created_at = created_at;
	}

	public News(int id, String name, String description, String detail) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.detail = detail;
	}
	
	public News() {
		super();
	}

	public News(int id, String name, String description) {
		this.id = id;
		this.name = name;
		this.description = description;
	}

	public News(String name, String detail) {
		this.name = name;
		this.detail = detail;
	}

	public News(String name, String description, String detail, String created_at) {
		this.name = name;
		this.description = description;
		this.detail = detail;
		this.created_at = created_at;
	}
	
	
}
