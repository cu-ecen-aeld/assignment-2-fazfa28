#include <stdio.h>
#include <syslog.h>

int main(int argc, char* argv[]) {
	openlog(NULL,0,LOG_USER);
	if (argc != 3){
	syslog(LOG_ERR, "input argument must be 2");
		printf("input argument must be 2");
		return 1;
	}
	char *file_path = argv[1];
	char *message = argv[2];
	FILE *fptr = fopen(file_path,"w");
	if (fptr == NULL){
		syslog(LOG_ERR, "Failed to obtain file path: %s", file_path);
		return 1;
	}
	fprintf(fptr, "%s", message );
	syslog(LOG_DEBUG, "Writing %s to %s", message, file_path);
	fclose(fptr);

	return 0;
} 
