<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_copy_project_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies a version of an Amazon Rekognition Custom Labels model from a source project to a destination project

### Description

Copies a version of an Amazon Rekognition Custom Labels model from a
source project to a destination project. The source and destination
projects can be in different AWS accounts but must be in the same AWS
Region. You can't copy a model to another AWS service.

To copy a model version to a different AWS account, you need to create a
resource-based policy known as a *project policy*. You attach the
project policy to the source project by calling `put_project_policy`.
The project policy gives permission to copy the model version from a
trusting AWS account to a trusted account.

For more information creating and attaching a project policy, see
Attaching a project policy (SDK) in the *Amazon Rekognition Custom
Labels Developer Guide*.

If you are copying a model version to a project in the same AWS account,
you don't need to create a project policy.

To copy a model, the destination project, source project, and source
model version must already exist.

Copying a model version takes a while to complete. To get the current
status, call `describe_project_versions` and check the value of `Status`
in the ProjectVersionDescription object. The copy operation has finished
when the value of `Status` is `COPYING_COMPLETED`.

This operation requires permissions to perform the
`rekognition:CopyProjectVersion` action.

### Usage

    rekognition_copy_project_version(SourceProjectArn,
      SourceProjectVersionArn, DestinationProjectArn, VersionName,
      OutputConfig, Tags, KmsKeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_copy_project_version_:_SourceProjectArn">SourceProjectArn</code></td>
<td><p>[required] The ARN of the source project in the trusting AWS
account.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_copy_project_version_:_SourceProjectVersionArn">SourceProjectVersionArn</code></td>
<td><p>[required] The ARN of the model version in the source project
that you want to copy to a destination project.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_copy_project_version_:_DestinationProjectArn">DestinationProjectArn</code></td>
<td><p>[required] The ARN of the project in the trusted AWS account that
you want to copy the model version to.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_copy_project_version_:_VersionName">VersionName</code></td>
<td><p>[required] A name for the version of the model that's copied to
the destination project.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_copy_project_version_:_OutputConfig">OutputConfig</code></td>
<td><p>[required] The S3 bucket and folder location where the training
output for the source model version is placed.</p></td>
</tr>
<tr class="even">
<td><code id="rekognition_copy_project_version_:_Tags">Tags</code></td>
<td><p>The key-value tags to assign to the model version.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_copy_project_version_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The identifier for your AWS Key Management Service key (AWS KMS
key). You can supply the Amazon Resource Name (ARN) of your KMS key, the
ID of your KMS key, an alias for your KMS key, or an alias ARN. The key
is used to encrypt training results and manifest files written to the
output Amazon S3 bucket (<code>OutputConfig</code>).</p>
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

    svc$copy_project_version(
      SourceProjectArn = "string",
      SourceProjectVersionArn = "string",
      DestinationProjectArn = "string",
      VersionName = "string",
      OutputConfig = list(
        S3Bucket = "string",
        S3KeyPrefix = "string"
      ),
      Tags = list(
        "string"
      ),
      KmsKeyId = "string"
    )

### Examples

    ## Not run: 
    # This operation copies a version of an Amazon Rekognition Custom Labels
    # model from a source project to a destination project.
    svc$copy_project_version(
      DestinationProjectArn = "arn:aws:rekognition:us-east-1:555555555555:proje...",
      KmsKeyId = "arn:1234abcd-12ab-34cd-56ef-1234567890ab",
      OutputConfig = list(
        S3Bucket = "bucket-name",
        S3KeyPrefix = "path_to_folder"
      ),
      SourceProjectArn = "arn:aws:rekognition:us-east-1:111122223333:project/So...",
      SourceProjectVersionArn = "arn:aws:rekognition:us-east-1:111122223333:pro...",
      Tags = list(
        key1 = "val1"
      ),
      VersionName = "DestinationVersionName_cross_account"
    )

    ## End(Not run)
