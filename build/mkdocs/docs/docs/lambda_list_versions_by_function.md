<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_list_versions_by_function</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of versions, with the version-specific configuration of each

### Description

Returns a list of
[versions](https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html),
with the version-specific configuration of each. Lambda returns up to 50
versions per call.

### Usage

    lambda_list_versions_by_function(FunctionName, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_list_versions_by_function_:_FunctionName">FunctionName</code></td>
<td><p>[required] The name of the Lambda function.</p>
<p><strong>Name formats</strong></p>
<ul>
<li><p><strong>Function name</strong> -
<code>MyFunction</code>.</p></li>
<li><p><strong>Function ARN</strong> - <code
style="white-space: pre;">⁠arn:aws:lambda:us-west-2:123456789012:function:MyFunction⁠</code>.</p></li>
<li><p><strong>Partial ARN</strong> - <code
style="white-space: pre;">⁠123456789012:function:MyFunction⁠</code>.</p></li>
</ul>
<p>The length constraint applies only to the full ARN. If you specify
only the function name, it is limited to 64 characters in
length.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_list_versions_by_function_:_Marker">Marker</code></td>
<td><p>Specify the pagination token that's returned by a previous
request to retrieve the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_list_versions_by_function_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of versions to return. Note that
<code>list_versions_by_function</code> returns a maximum of 50 items in
each response, even if you set the number higher.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextMarker = "string",
      Versions = list(
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
      )
    )

### Request syntax

    svc$list_versions_by_function(
      FunctionName = "string",
      Marker = "string",
      MaxItems = 123
    )
