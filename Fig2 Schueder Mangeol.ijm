
macro "Fig2 Start/end left zdisk right mline [F2] Action Tool - C666 T0908F T6908i Ta908g Td9082" {

// Macro for Fig 2 of Schueder Mangeol et al.
// Use straight line of width 30 as a selection for profile
// Start/end left zdisk right m-line
 
image_folder_name = getDirectory("Please select the folder containing your image");

imagenumber = getTitle();

if (File.exists(image_folder_name + File.separator + "Intensity_measurement")!=1) {
	File.makeDirectory(image_folder_name + File.separator + "Intensity_measurement");
}	
	
segment_path = image_folder_name + File.separator + "Intensity_measurement" + File.separator +  imagenumber + "_intensities.txt";

getPixelSize(unit, pixelWidth, pixelHeight);
z = getSliceNumber();

File.append("Zposition,pixelsize"+'\r', segment_path);

File.append(toString(z)+","+toString(pixelWidth)+'\r', segment_path);

File.append("profile"+'\r', segment_path);

profile = getProfile();

a = "";
for (k=0; k<lengthOf(profile)-1; k++)
	{a = a +(toString(profile[k]))+",";}
a = a + toString(profile[lengthOf(profile)-1]);

File.append(a, segment_path);

}

/*************************************************************************************************/


macro "Fig2 Start/end left zdisk right mline Action Tool [F2]" {

// Macro for Fig 2 of Schueder Mangeol et al.
// Use straight line of width 30 as a selection for profile
 
image_folder_name = getDirectory("Please select the folder containing your image");

imagenumber = getTitle();

if (File.exists(image_folder_name + File.separator + "Intensity_measurement")!=1) {
	File.makeDirectory(image_folder_name + File.separator + "Intensity_measurement");
}	
	
segment_path = image_folder_name + File.separator + "Intensity_measurement" + File.separator +  imagenumber + "_intensities.txt";

getPixelSize(unit, pixelWidth, pixelHeight);
z = getSliceNumber();

File.append("Zposition,pixelsize"+'\r', segment_path);

File.append(toString(z)+","+toString(pixelWidth)+'\r', segment_path);

File.append("profile"+'\r', segment_path);

profile = getProfile();

a = "";
for (k=0; k<lengthOf(profile)-1; k++)
	{a = a +(toString(profile[k]))+",";}
a = a + toString(profile[lengthOf(profile)-1]);

File.append(a, segment_path);


}
