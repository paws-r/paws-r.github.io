<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_describe_directories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Obtains information about the directories that belong to this account

### Description

Obtains information about the directories that belong to this account.

You can retrieve information about specific directories by passing the
directory identifiers in the `DirectoryIds` parameter. Otherwise, all
directories that belong to the current account are returned.

This operation supports pagination with the use of the `NextToken`
request and response parameters. If more results are available, the
`DescribeDirectoriesResult.NextToken` member contains a token that you
pass in the next call to `describe_directories` to retrieve the next set
of items.

You can also specify a maximum number of return results with the `Limit`
parameter.

### Usage

    directoryservice_describe_directories(DirectoryIds, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_describe_directories_:_DirectoryIds">DirectoryIds</code></td>
<td><p>A list of identifiers of the directories for which to obtain the
information. If this member is null, all directories that belong to the
current account are returned.</p>
<p>An empty list results in an <code>InvalidParameterException</code>
being thrown.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_directories_:_NextToken">NextToken</code></td>
<td><p>The <code>DescribeDirectoriesResult.NextToken</code> value from a
previous call to <code>describe_directories</code>. Pass null if this is
the first call.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_describe_directories_:_Limit">Limit</code></td>
<td><p>The maximum number of items to return. If this value is zero, the
maximum number of items is specified by the limitations of the
operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DirectoryDescriptions = list(
        list(
          DirectoryId = "string",
          Name = "string",
          ShortName = "string",
          Size = "Small"|"Large",
          Edition = "Enterprise"|"Standard",
          Alias = "string",
          AccessUrl = "string",
          Description = "string",
          DnsIpAddrs = list(
            "string"
          ),
          Stage = "Requested"|"Creating"|"Created"|"Active"|"Inoperable"|"Impaired"|"Restoring"|"RestoreFailed"|"Deleting"|"Deleted"|"Failed",
          ShareStatus = "Shared"|"PendingAcceptance"|"Rejected"|"Rejecting"|"RejectFailed"|"Sharing"|"ShareFailed"|"Deleted"|"Deleting",
          ShareMethod = "ORGANIZATIONS"|"HANDSHAKE",
          ShareNotes = "string",
          LaunchTime = as.POSIXct(
            "2015-01-01"
          ),
          StageLastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          Type = "SimpleAD"|"ADConnector"|"MicrosoftAD"|"SharedMicrosoftAD",
          VpcSettings = list(
            VpcId = "string",
            SubnetIds = list(
              "string"
            ),
            SecurityGroupId = "string",
            AvailabilityZones = list(
              "string"
            )
          ),
          ConnectSettings = list(
            VpcId = "string",
            SubnetIds = list(
              "string"
            ),
            CustomerUserName = "string",
            SecurityGroupId = "string",
            AvailabilityZones = list(
              "string"
            ),
            ConnectIps = list(
              "string"
            )
          ),
          RadiusSettings = list(
            RadiusServers = list(
              "string"
            ),
            RadiusPort = 123,
            RadiusTimeout = 123,
            RadiusRetries = 123,
            SharedSecret = "string",
            AuthenticationProtocol = "PAP"|"CHAP"|"MS-CHAPv1"|"MS-CHAPv2",
            DisplayLabel = "string",
            UseSameUsername = TRUE|FALSE
          ),
          RadiusStatus = "Creating"|"Completed"|"Failed",
          StageReason = "string",
          SsoEnabled = TRUE|FALSE,
          DesiredNumberOfDomainControllers = 123,
          OwnerDirectoryDescription = list(
            DirectoryId = "string",
            AccountId = "string",
            DnsIpAddrs = list(
              "string"
            ),
            VpcSettings = list(
              VpcId = "string",
              SubnetIds = list(
                "string"
              ),
              SecurityGroupId = "string",
              AvailabilityZones = list(
                "string"
              )
            ),
            RadiusSettings = list(
              RadiusServers = list(
                "string"
              ),
              RadiusPort = 123,
              RadiusTimeout = 123,
              RadiusRetries = 123,
              SharedSecret = "string",
              AuthenticationProtocol = "PAP"|"CHAP"|"MS-CHAPv1"|"MS-CHAPv2",
              DisplayLabel = "string",
              UseSameUsername = TRUE|FALSE
            ),
            RadiusStatus = "Creating"|"Completed"|"Failed"
          ),
          RegionsInfo = list(
            PrimaryRegion = "string",
            AdditionalRegions = list(
              "string"
            )
          ),
          OsVersion = "SERVER_2012"|"SERVER_2019"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_directories(
      DirectoryIds = list(
        "string"
      ),
      NextToken = "string",
      Limit = 123
    )
