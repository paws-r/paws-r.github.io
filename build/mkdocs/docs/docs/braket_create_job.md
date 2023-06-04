<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>braket_create_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Braket job

### Description

Creates an Amazon Braket job.

### Usage

    braket_create_job(algorithmSpecification, checkpointConfig, clientToken,
      deviceConfig, hyperParameters, inputDataConfig, instanceConfig, jobName,
      outputDataConfig, roleArn, stoppingCondition, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="braket_create_job_:_algorithmSpecification">algorithmSpecification</code></td>
<td><p>[required] Definition of the Amazon Braket job to be created.
Specifies the container image the job uses and information about the
Python scripts used for entry and training.</p></td>
</tr>
<tr class="even">
<td><code
id="braket_create_job_:_checkpointConfig">checkpointConfig</code></td>
<td><p>Information about the output locations for job checkpoint
data.</p></td>
</tr>
<tr class="odd">
<td><code id="braket_create_job_:_clientToken">clientToken</code></td>
<td><p>[required] A unique token that guarantees that the call to this
API is idempotent.</p></td>
</tr>
<tr class="even">
<td><code id="braket_create_job_:_deviceConfig">deviceConfig</code></td>
<td><p>[required] The quantum processing unit (QPU) or simulator used to
create an Amazon Braket job.</p></td>
</tr>
<tr class="odd">
<td><code
id="braket_create_job_:_hyperParameters">hyperParameters</code></td>
<td><p>Algorithm-specific parameters used by an Amazon Braket job that
influence the quality of the training job. The values are set with a
string of JSON key:value pairs, where the key is the name of the
hyperparameter and the value is the value of th hyperparameter.</p></td>
</tr>
<tr class="even">
<td><code
id="braket_create_job_:_inputDataConfig">inputDataConfig</code></td>
<td><p>A list of parameters that specify the name and type of input data
and where it is located.</p></td>
</tr>
<tr class="odd">
<td><code
id="braket_create_job_:_instanceConfig">instanceConfig</code></td>
<td><p>[required] Configuration of the resource instances to use while
running the hybrid job on Amazon Braket.</p></td>
</tr>
<tr class="even">
<td><code id="braket_create_job_:_jobName">jobName</code></td>
<td><p>[required] The name of the Amazon Braket job.</p></td>
</tr>
<tr class="odd">
<td><code
id="braket_create_job_:_outputDataConfig">outputDataConfig</code></td>
<td><p>[required] The path to the S3 location where you want to store
job artifacts and the encryption key used to store them.</p></td>
</tr>
<tr class="even">
<td><code id="braket_create_job_:_roleArn">roleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an IAM role that
Amazon Braket can assume to perform tasks on behalf of a user. It can
access user resources, run an Amazon Braket job container on behalf of
user, and output resources to the users' s3 buckets.</p></td>
</tr>
<tr class="odd">
<td><code
id="braket_create_job_:_stoppingCondition">stoppingCondition</code></td>
<td><p>The user-defined criteria that specifies when a job stops
running.</p></td>
</tr>
<tr class="even">
<td><code id="braket_create_job_:_tags">tags</code></td>
<td><p>A tag object that consists of a key and an optional value, used
to manage metadata for Amazon Braket resources.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobArn = "string"
    )

### Request syntax

    svc$create_job(
      algorithmSpecification = list(
        containerImage = list(
          uri = "string"
        ),
        scriptModeConfig = list(
          compressionType = "NONE"|"GZIP",
          entryPoint = "string",
          s3Uri = "string"
        )
      ),
      checkpointConfig = list(
        localPath = "string",
        s3Uri = "string"
      ),
      clientToken = "string",
      deviceConfig = list(
        device = "string"
      ),
      hyperParameters = list(
        "string"
      ),
      inputDataConfig = list(
        list(
          channelName = "string",
          contentType = "string",
          dataSource = list(
            s3DataSource = list(
              s3Uri = "string"
            )
          )
        )
      ),
      instanceConfig = list(
        instanceCount = 123,
        instanceType = "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.p4d.24xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5n.xlarge"|"ml.c5n.2xlarge"|"ml.c5n.4xlarge"|"ml.c5n.9xlarge"|"ml.c5n.18xlarge",
        volumeSizeInGb = 123
      ),
      jobName = "string",
      outputDataConfig = list(
        kmsKeyId = "string",
        s3Path = "string"
      ),
      roleArn = "string",
      stoppingCondition = list(
        maxRuntimeInSeconds = 123
      ),
      tags = list(
        "string"
      )
    )
