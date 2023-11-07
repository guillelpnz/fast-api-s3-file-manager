# Fast API S3 file manager

## Project installation

To build the project, you need to build the docker image:

`docker build -t fastapi-s3-proxy .`

Once it's built, to run it, you have to provide your AWS credentials:

`docker run -p 8000:8000 -e AWS_ACCESS_KEY_ID=<AWS_ACCESS_KEY_ID> -e AWS_SECRET_ACCESS_KEY=<AWS_SECRET_ACCESS_KEY> fastapi-s3-proxy`

filling <AWS_ACCESS_KEY_ID> and <AWS_SECRET_ACCESS_KEY> with your AWS account access key and secret access key.

## Endpoints

### Upload
If you need to upload a file to your S3, make a POST request to the following endpoint:

`http://localhost:8000/upload`

Example body with curl:

`curl --location 'http://localhost:8000/upload' \
--form 'bucket_name="<your_bucket_name>"' \
--form 'object_name="<desired_object_name>"' \
--form 'file=@"<path/to/your/local/file>"'`

### Download
If you need to download a file from your S3, make a GET request to the following endpoint:

Example params with curl

`curl --location 'http://localhost:8000/download?bucket_name=<your_bucket_name>&object_name=<your_object_name>'`

