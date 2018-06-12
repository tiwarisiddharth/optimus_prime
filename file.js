var txtFile = "/root/Desktop/cpo"
var file = new File(txtFile);

file.open("r"); // open file with read access
var str = "";
while (!file.eof) {
	// read each line of text
	str += file.readln() + "\n";
}
file.close();
