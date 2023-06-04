<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_list_functions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of Lambda functions, with the version-specific configuration of each

### Description

Returns a list of Lambda functions, with the version-specific
configuration of each. Lambda returns up to 50 functions per call.

Set `FunctionVersion` to `ALL` to include all published versions of each
function in addition to the unpublished version.

The `list_functions` operation returns a subset of the
FunctionConfiguration fields. To get the additional fields (State,
StateReasonCode, StateReason, LastUpdateStatus, LastUpdateStatusReason,
LastUpdateStatusReasonCode, RuntimeVersionConfig) for a function or
version, use `get_function`.

### Usage

    lambda_list_functions(MasterRegion, FunctionVersion, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_list_functions_:_MasterRegion">MasterRegion</code></td>
<td><p>For Lambda@Edge functions, the Amazon Web Services Region of the
master function. For example, <code>us-east-1</code> filters the list of
functions to include only Lambda@Edge functions replicated from a master
function in US East (N. Virginia). If specified, you must set
<code>FunctionVersion</code> to <code>ALL</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_list_functions_:_FunctionVersion">FunctionVersion</code></td>
<td><p>Set to <code>ALL</code> to include entries for all published
versions of each function.</p></td>
</tr>
<tr class="odd">
<td><code id="lambda_list_functions_:_Marker">Marker</code></td>
<td><p>Specify the pagination token that's returned by a previous
request to retrieve the next page of results.</p></td>
</tr>
<tr class="even">
<td><code id="lambda_list_functions_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of functions to return in the response. Note
that <code>list_functions</code> returns a maximum of 50 items in each
response, even if you set the number higher.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextMarker = "string",
      Functions = list(
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

    svc$list_functions(
      MasterRegion = "string",
      FunctionVersion = "ALL",
      Marker = "string",
      MaxItems = 123
    )
