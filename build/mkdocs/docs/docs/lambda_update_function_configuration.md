<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_update_function_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modify the version-specific settings of a Lambda function

### Description

Modify the version-specific settings of a Lambda function.

When you update a function, Lambda provisions an instance of the
function and its supporting resources. If your function connects to a
VPC, this process can take a minute. During this time, you can't modify
the function, but you can still invoke it. The `LastUpdateStatus`,
`LastUpdateStatusReason`, and `LastUpdateStatusReasonCode` fields in the
response from `get_function_configuration` indicate when the update is
complete and the function is processing events with the new
configuration. For more information, see [Lambda function
states](https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html).

These settings can vary between versions of a function and are locked
when you publish a version. You can't modify the configuration of a
published version, only the unpublished version.

To configure function concurrency, use `put_function_concurrency`. To
grant invoke permissions to an Amazon Web Services account or Amazon Web
Service, use `add_permission`.

### Usage

    lambda_update_function_configuration(FunctionName, Role, Handler,
      Description, Timeout, MemorySize, VpcConfig, Environment, Runtime,
      DeadLetterConfig, KMSKeyArn, TracingConfig, RevisionId, Layers,
      FileSystemConfigs, ImageConfig, EphemeralStorage, SnapStart)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_update_function_configuration_:_FunctionName">FunctionName</code></td>
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
<td><code
id="lambda_update_function_configuration_:_Role">Role</code></td>
<td><p>The Amazon Resource Name (ARN) of the function's execution
role.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_function_configuration_:_Handler">Handler</code></td>
<td><p>The name of the method within your code that Lambda calls to run
your function. Handler is required if the deployment package is a .zip
file archive. The format includes the file name. It can also include
namespaces and other qualifiers, depending on the runtime. For more
information, see <a
href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-progmodel.html">Lambda
programming model</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_function_configuration_:_Description">Description</code></td>
<td><p>A description of the function.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_function_configuration_:_Timeout">Timeout</code></td>
<td><p>The amount of time (in seconds) that Lambda allows a function to
run before stopping it. The default is 3 seconds. The maximum allowed
value is 900 seconds. For more information, see <a
href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtime-environment.html">Lambda
execution environment</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_function_configuration_:_MemorySize">MemorySize</code></td>
<td><p>The amount of <a
href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console">memory
available to the function</a> at runtime. Increasing the function memory
also increases its CPU allocation. The default value is 128 MB. The
value can be any multiple of 1 MB.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_function_configuration_:_VpcConfig">VpcConfig</code></td>
<td><p>For network connectivity to Amazon Web Services resources in a
VPC, specify a list of security groups and subnets in the VPC. When you
connect a function to a VPC, it can access resources and the internet
only through that VPC. For more information, see <a
href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">Configuring
a Lambda function to access resources in a VPC</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_function_configuration_:_Environment">Environment</code></td>
<td><p>Environment variables that are accessible from function code
during execution.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_function_configuration_:_Runtime">Runtime</code></td>
<td><p>The identifier of the function's <a
href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">runtime</a>.
Runtime is required if the deployment package is a .zip file
archive.</p>
<p>The following list includes deprecated runtimes. For more
information, see <a
href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy">Runtime
deprecation policy</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_function_configuration_:_DeadLetterConfig">DeadLetterConfig</code></td>
<td><p>A dead-letter queue configuration that specifies the queue or
topic where Lambda sends asynchronous events when they fail processing.
For more information, see <a
href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq">Dead-letter
queues</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_function_configuration_:_KMSKeyArn">KMSKeyArn</code></td>
<td><p>The ARN of the Key Management Service (KMS) customer managed key
that's used to encrypt your function's <a
href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption">environment
variables</a>. When <a
href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html">Lambda
SnapStart</a> is activated, this key is also used to encrypt your
function's snapshot. If you don't provide a customer managed key, Lambda
uses a default service key.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_function_configuration_:_TracingConfig">TracingConfig</code></td>
<td><p>Set <code>Mode</code> to <code>Active</code> to sample and trace
a subset of incoming requests with <a
href="https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html">X-Ray</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_function_configuration_:_RevisionId">RevisionId</code></td>
<td><p>Update the function only if the revision ID matches the ID that's
specified. Use this option to avoid modifying a function that has
changed since you last read it.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_function_configuration_:_Layers">Layers</code></td>
<td><p>A list of <a
href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">function
layers</a> to add to the function's execution environment. Specify each
layer by its ARN, including the version.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_function_configuration_:_FileSystemConfigs">FileSystemConfigs</code></td>
<td><p>Connection settings for an Amazon EFS file system.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_function_configuration_:_ImageConfig">ImageConfig</code></td>
<td><p><a href="https://docs.aws.amazon.com/lambda/latest/dg/">Container
image configuration values</a> that override the values in the container
image Docker file.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_update_function_configuration_:_EphemeralStorage">EphemeralStorage</code></td>
<td><p>The size of the function's <code
style="white-space: pre;">⁠/tmp⁠</code> directory in MB. The default value
is 512, but can be any whole number between 512 and 10,240 MB.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_update_function_configuration_:_SnapStart">SnapStart</code></td>
<td><p>The function's <a
href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">SnapStart</a>
setting.</p></td>
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

    svc$update_function_configuration(
      FunctionName = "string",
      Role = "string",
      Handler = "string",
      Description = "string",
      Timeout = 123,
      MemorySize = 123,
      VpcConfig = list(
        SubnetIds = list(
          "string"
        ),
        SecurityGroupIds = list(
          "string"
        )
      ),
      Environment = list(
        Variables = list(
          "string"
        )
      ),
      Runtime = "nodejs"|"nodejs4.3"|"nodejs6.10"|"nodejs8.10"|"nodejs10.x"|"nodejs12.x"|"nodejs14.x"|"nodejs16.x"|"java8"|"java8.al2"|"java11"|"python2.7"|"python3.6"|"python3.7"|"python3.8"|"python3.9"|"dotnetcore1.0"|"dotnetcore2.0"|"dotnetcore2.1"|"dotnetcore3.1"|"dotnet6"|"nodejs4.3-edge"|"go1.x"|"ruby2.5"|"ruby2.7"|"provided"|"provided.al2"|"nodejs18.x"|"python3.10"|"java17",
      DeadLetterConfig = list(
        TargetArn = "string"
      ),
      KMSKeyArn = "string",
      TracingConfig = list(
        Mode = "Active"|"PassThrough"
      ),
      RevisionId = "string",
      Layers = list(
        "string"
      ),
      FileSystemConfigs = list(
        list(
          Arn = "string",
          LocalMountPath = "string"
        )
      ),
      ImageConfig = list(
        EntryPoint = list(
          "string"
        ),
        Command = list(
          "string"
        ),
        WorkingDirectory = "string"
      ),
      EphemeralStorage = list(
        Size = 123
      ),
      SnapStart = list(
        ApplyOn = "PublishedVersions"|"None"
      )
    )
