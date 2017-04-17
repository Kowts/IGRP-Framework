package nosi.core.gui.fields;

public class SeparatorField extends AbstractField {

	public SeparatorField(String name) {
		super();
		this.propertie.put("type","separator");
		this.setTagName(name);
		this.propertie.put("name","p_"+name);
		this.propertie.put("right", false);
		this.propertie.put("placeholder", "");
		this.propertie.put("maxlength", 30);
	}

}