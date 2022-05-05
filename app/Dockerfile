# Fetch Ubuntu image
FROM public.ecr.aws/lambda/python:3.8

# Maintainer
LABEL AUTHOR "Felix-ai"

# Update and install packages you need
# RUN apt-get -y update

# Install python
RUN pip3 install --user pymsteams
# RUN pip3 install --target "${LAMBDA_TASK_ROOT}" pymsteams

# Copy teams_message.py to task root directory
ADD teams_message.py ${LAMBDA_TASK_ROOT}

# Run using python
CMD ["teams_message.lambda_handler"]
# ENTRYPOINT ["python3.8"]