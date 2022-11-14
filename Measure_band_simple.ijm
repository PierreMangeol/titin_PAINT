/*************************************************************************************************/


macro "Duplicate image  Action Tool -  C000 T0709D T6709u Tb709p Tg709l" {

run("Duplicate...", " ");
setTool("polygon");
}


/*************************************************************************************************/


macro "Substract background value Action Tool -  C000 T0709S T6709u Tc709b Th709s T0f09b T5f09c Tbf09k" {

mean = getValue("Mean")
run("Select None");
run("Subtract...", "value=" + toString(mean));

}


/*************************************************************************************************/


macro "Get band value [F2] Action Tool -  C000 T0709G T7709e Td709t T0f09V T6f09a Tcf09l" {

getSelectionCoordinates(xpoints, ypoints);

for (i = 0; i < lengthOf(xpoints); i++) {
	makeRectangle(xpoints[i]-16, ypoints[i]-10, 32, 21);
	run("Measure");
	run("Select None");
}}

/*************************************************************************************************/


macro "Get band value  Action Tool [F2]" {
getSelectionCoordinates(xpoints, ypoints);

for (i = 0; i < lengthOf(xpoints); i++) {
	makeRectangle(xpoints[i]-16, ypoints[i]-10, 32, 21);
	run("Measure");
}
