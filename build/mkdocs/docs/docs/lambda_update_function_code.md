<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_update_function_code</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a Lambda function's code

### Description

Updates a Lambda function's code. If code signing is enabled for the
function, the code package must be signed by a trusted publisher. For
more information, see [Configuring code signing for
Lambda](https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html).

If the function's package type is `Image`, then you must specify the
code package in `ImageUri` as the URI of a [container
image](https://docs.aws.amazon.com/lambda/latest/dg/) in the Amazon ECR
registry.

If the function's package type is `Zip`, then you must specify the
deployment package as a [.zip file
archive](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip).
Enter the Amazon S3 bucket and key of the code .zip file location. You
can also provide the function code inline using the `ZipFile` field.

The code in the deployment package must be compatible with the target
instruction set architecture of the function (`x86-64` or `arm64`).

The function's code is locked when you publish a version. You can't
modify the code of a published version, only the unpublished version.

For a function defined as a container image, Lambda resolves the image
tag to an image digest. In Amazon ECR, if you update the image tag to a
new image, Lambda does not automatically update the function.

### Usage

    lambda_update_function_code(FunctionName, ZipFile, S3Bucket, S3Key,
      S3ObjectVersion, ImageUri, Publish, DryRun, RevisionId, Architectures)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_update_function_code_:_FunctionName">FunctionName</code></td>
<td><p>[required] The name of the Lambda function.</p>
<p><strong>Name formats</strong></p>
<ul>
<li><p><strong>Function name</strong> – <code
style="white-space: pre;">⁠my-function⁠</code>.</p></li>
<li><p><strong>Function ARN</strong> – <code
style="white-space: pre;">⁠arn:aws:lambda:us-west-2:123456789012:function:my-function⁠</code>.</p></li>
<li><p><strong>Partial ARN</strong> – <code
style="white-space: pre;">⁠123456789012:function:my-function⁠</code>.</p></li>
</ul>
<p>The length constraint applies only to the full ARN. If you specify
only the function name, it is limited to 64 characters in
length.</p></td>
</tr>
<tr class="even">
<td><code id="lambda_update_function_code_:_ZipFile">ZipFile</code></td>
<td><p>The base64-encoded contents of the deployment package. Amazon Web
Services SDK and CLI clients handle the encoding for you. Use only with
a function defined with a .zip file archive deployment package.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_function_code_:_S3Bucket">S3Bucket</code></td>
<td><p>An Amazon S3 bucket in the same Amazon Web Services Region as
your function. The bucket can be in a different Amazon Web Services
account. Use only with a function defined with a .zip file archive
deployment package.</p></td>
</tr>
<tr class="even">
<td><code id="lambda_update_function_code_:_S3Key">S3Key</code></td>
<td><p>The Amazon S3 key of the deployment package. Use only with a
function defined with a .zip file archive deployment package.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_function_code_:_S3ObjectVersion">S3ObjectVersion</code></td>
<td><p>For versioned objects, the version of the deployment package
object to use.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_function_code_:_ImageUri">ImageUri</code></td>
<td><p>URI of a container image in the Amazon ECR registry. Do not use
for a function defined with a .zip file archive.</p></td>
</tr>
<tr class="odd">
<td><code id="lambda_update_function_code_:_Publish">Publish</code></td>
<td><p>Set to true to publish a new version of the function after
updating the code. This has the same effect as calling
<code>publish_version</code> separately.</p></td>
</tr>
<tr class="even">
<td><code id="lambda_update_function_code_:_DryRun">DryRun</code></td>
<td><p>Set to true to validate the request parameters and access
permissions without modifying the function code.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_function_code_:_RevisionId">RevisionId</code></td>
<td><p>Update the function only if the revision ID matches the ID that's
specified. Use this option to avoid modifying a function that has
changed since you last read it.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_function_code_:_Architectures">Architectures</code></td>
<td><p>The instruction set architecture that the function supports.
Enter a string array with one of the valid values (arm64 or x86_64). The
default value is <code>x86_64</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FunctionName = "string",
      FunctionArn = "string",
      Runtime = "nodejs"|"nodejs4.3"|"nodejs6.10"|"nodejs8.10"|"nodejs10.x"|"nodejs12.x"|"nodejs14.x"|"nodejs16.x"|"java8"|"java8.al2"|"java11"|"python2.7"|"python3.6"|"python3.7"|"python3.8"|"python3.9"|"dotnetcore1.0"|"dotnetcore2.0"|"dotnetcore2.1"|"dotnetcore3.1"|"dotnet6"|"nodejs4.3-edge"|"go1.x"|"ruby2.5"|"ruby2.7"|"provided"|"provided.al2"|"nodejs18.x"|"python3.10"|"java17",
      Role = "string",
      Handler = "string",
      CodeSize = 123,
      Description = "string",
      Timeout = 123,
      MemorySize = 123,
      LastModified = "string",
      CodeSha256 = "string",
      Version = "string",
      VpcConfig = list(
        SubnetIds = list(
          "string"
        ),
        SecurityGroupIds = list(
          "string"
        ),
        VpcId = "string"
      ),
      DeadLetterConfig = list(
        TargetArn = "string"
      ),
      Environment = list(
        Variables = list(
          "string"
        ),
        Error = list(
          ErrorCode = "string",
          Message = "string"
        )
      ),
      KMSKeyArn = "string",
      TracingConfig = list(
        Mode = "Active"|"PassThrough"
      ),
      MasterArn = "string",
      RevisionId = "string",
      Layers = list(
        list(
          Arn = "string",
          CodeSize = 123,
          SigningProfileVersionArn = "string",
          SigningJobArn = "string"
        )
      ),
      State = "Pending"|"Active"|"Inactive"|"Failed",
      StateReason = "string",
      StateReasonCode = "Idle"|"Creating"|"Restoring"|"EniLimitExceeded"|"InsufficientRolePermissions"|"InvalidConfiguration"|"InternalError"|"SubnetOutOfIPAddresses"|"InvalidSubnet"|"InvalidSecurityGroup"|"ImageDeleted"|"ImageAccessDenied"|"InvalidImage"|"KMSKeyAccessDenied"|"KMSKeyNotFound"|"InvalidStateKMSKey"|"DisabledKMSKey"|"EFSIOError"|"EFSMountConnectivityError"|"EFSMountFailure"|"EFSMountTimeout"|"InvalidRuntime"|"InvalidZipFileException"|"FunctionError",
      LastUpdateStatus = "Successful"|"Failed"|"InProgress",
      LastUpdateStatusReason = "string",
      LastUpdateStatusReasonCode = "EniLimitExceeded"|"InsufficientRolePermissions"|"InvalidConfiguration"|"InternalError"|"SubnetOutOfIPAddresses"|"InvalidSubnet"|"InvalidSecurityGroup"|"ImageDeleted"|"ImageAccessDenied"|"InvalidImage"|"KMSKeyAccessDenied"|"KMSKeyNotFound"|"InvalidStateKMSKey"|"DisabledKMSKey"|"EFSIOError"|"EFSMountConnectivityError"|"EFSMountFailure"|"EFSMountTimeout"|"InvalidRuntime"|"InvalidZipFileException"|"FunctionError",
      FileSystemConfigs = list(
        list(
          Arn = "string",
          LocalMountPath = "string"
        )
      ),
      PackageType = "Zip"|"Image",
      ImageConfigResponse = list(
        ImageConfig = list(
          EntryPoint = list(
            "string"
          ),
          Command = list(
            "string"
          ),
          WorkingDirectory = "string"
        ),
        Error = list(
          ErrorCode = "string",
          Message = "string"
        )
      ),
      SigningProfileVersionArn = "string",
      SigningJobArn = "string",
      Architectures = list(
        "x86_64"|"arm64"
      ),
      EphemeralStorage = list(
        Size = 123
      ),
      SnapStart = list(
        ApplyOn = "PublishedVersions"|"None",
        OptimizationStatus = "On"|"Off"
      ),
      RuntimeVersionConfig = list(
        RuntimeVersionArn = "string",
        Error = list(
          ErrorCode = "string",
          Message = "string"
        )
      )
    )

### Request syntax

    svc$update_function_code(
      FunctionName = "string",
      ZipFile = raw,
      S3Bucket = "string",
      S3Key = "string",
      S3ObjectVersion = "string",
      ImageUri = "string",
      Publish = TRUE|FALSE,
      DryRun = TRUE|FALSE,
      RevisionId = "string",
      Architectures = list(
        "x86_64"|"arm64"
      )
    )
