<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_create_project_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new version of a model and begins training

### Description

Creates a new version of a model and begins training. Models are managed
as part of an Amazon Rekognition Custom Labels project. The response
from `create_project_version` is an Amazon Resource Name (ARN) for the
version of the model.

Training uses the training and test datasets associated with the
project. For more information, see Creating training and test dataset in
the *Amazon Rekognition Custom Labels Developer Guide*.

You can train a model in a project that doesn't have associated datasets
by specifying manifest files in the `TrainingData` and `TestingData`
fields.

If you open the console after training a model with manifest files,
Amazon Rekognition Custom Labels creates the datasets for you using the
most recent manifest files. You can no longer train a model version for
the project by specifying manifest files.

Instead of training with a project without associated datasets, we
recommend that you use the manifest files to create training and test
datasets for the project.

Training takes a while to complete. You can get the current status by
calling `describe_project_versions`. Training completed successfully if
the value of the `Status` field is `TRAINING_COMPLETED`.

If training fails, see Debugging a failed model training in the *Amazon
Rekognition Custom Labels* developer guide.

Once training has successfully completed, call
`describe_project_versions` to get the training results and evaluate the
model. For more information, see Improving a trained Amazon Rekognition
Custom Labels model in the *Amazon Rekognition Custom Labels* developers
guide.

After evaluating the model, you start the model by calling
`start_project_version`.

This operation requires permissions to perform the
`rekognition:CreateProjectVersion` action.

### Usage

    rekognition_create_project_version(ProjectArn, VersionName,
      OutputConfig, TrainingData, TestingData, Tags, KmsKeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_create_project_version_:_ProjectArn">ProjectArn</code></td>
<td><p>[required] The ARN of the Amazon Rekognition Custom Labels
project that manages the model that you want to train.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_create_project_version_:_VersionName">VersionName</code></td>
<td><p>[required] A name for the version of the model. This value must
be unique.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_create_project_version_:_OutputConfig">OutputConfig</code></td>
<td><p>[required] The Amazon S3 bucket location to store the results of
training. The S3 bucket can be in any AWS account as long as the caller
has <code>s3:PutObject</code> permissions on the S3 bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_create_project_version_:_TrainingData">TrainingData</code></td>
<td><p>Specifies an external manifest that the services uses to train
the model. If you specify <code>TrainingData</code> you must also
specify <code>TestingData</code>. The project must not have any
associated datasets.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_create_project_version_:_TestingData">TestingData</code></td>
<td><p>Specifies an external manifest that the service uses to test the
model. If you specify <code>TestingData</code> you must also specify
<code>TrainingData</code>. The project must not have any associated
datasets.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_create_project_version_:_Tags">Tags</code></td>
<td><p>A set of tags (key-value pairs) that you want to attach to the
model.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_create_project_version_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The identifier for your AWS Key Management Service key (AWS KMS
key). You can supply the Amazon Resource Name (ARN) of your KMS key, the
ID of your KMS key, an alias for your KMS key, or an alias ARN. The key
is used to encrypt training and test images copied into the service for
model training. Your source images are unaffected. The key is also used
to encrypt training results and manifest files written to the output
Amazon S3 bucket (<code>OutputConfig</code>).</p>
<p>If you choose to use your own KMS key, you need the following
permissions on the KMS key.</p>
<ul>
<li><p>kms:CreateGrant</p></li>
<li><p>kms:DescribeKey</p></li>
<li><p>kms:GenerateDataKey</p></li>
<li><p>kms:Decrypt</p></li>
</ul>
<p>If you don't specify a value for <code>KmsKeyId</code>, images copied
into the service are encrypted using a key that AWS owns and
manages.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProjectVersionArn = "string"
    )

### Request syntax

    svc$create_project_version(
      ProjectArn = "string",
      VersionName = "string",
      OutputConfig = list(
        S3Bucket = "string",
        S3KeyPrefix = "string"
      ),
      TrainingData = list(
        Assets = list(
          list(
            GroundTruthManifest = list(
              S3Object = list(
                Bucket = "string",
                Name = "string",
                Version = "string"
              )
            )
          )
        )
      ),
      TestingData = list(
        Assets = list(
          list(
            GroundTruthManifest = list(
              S3Object = list(
                Bucket = "string",
                Name = "string",
                Version = "string"
              )
            )
          )
        ),
        AutoCreate = TRUE|FALSE
      ),
      Tags = list(
        "string"
      ),
      KmsKeyId = "string"
    )
