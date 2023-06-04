<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_create_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a filter using the specified finding criteria

### Description

Creates a filter using the specified finding criteria. The maximum
number of saved filters per Amazon Web Services account per Region is
100. For more information, see [Quotas for
GuardDuty](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_limits.html).

### Usage

    guardduty_create_filter(DetectorId, Name, Description, Action, Rank,
      FindingCriteria, ClientToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_create_filter_:_DetectorId">DetectorId</code></td>
<td><p>[required] The ID of the detector belonging to the GuardDuty
account that you want to create a filter for.</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_create_filter_:_Name">Name</code></td>
<td><p>[required] The name of the filter. Valid characters include
period (.), underscore (_), dash (-), and alphanumeric characters. A
whitespace is considered to be an invalid character.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_create_filter_:_Description">Description</code></td>
<td><p>The description of the filter. Valid characters include
alphanumeric characters, and special characters such as hyphen, period,
colon, underscore, parentheses (<code>{ }</code>, <code
style="white-space: pre;">⁠[ ]⁠</code>, and <code
style="white-space: pre;">⁠( )⁠</code>), forward slash, horizontal tab,
vertical tab, newline, form feed, return, and whitespace.</p>
<p>[ ]: R:%20</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_create_filter_:_Action">Action</code></td>
<td><p>Specifies the action that is to be applied to the findings that
match the filter.</p></td>
</tr>
<tr class="odd">
<td><code id="guardduty_create_filter_:_Rank">Rank</code></td>
<td><p>Specifies the position of the filter in the list of current
filters. Also specifies the order in which this filter is applied to the
findings.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_create_filter_:_FindingCriteria">FindingCriteria</code></td>
<td><p>[required] Represents the criteria to be used in the filter for
querying findings.</p>
<p>You can only use the following attributes to query findings:</p>
<ul>
<li><p>accountId</p></li>
<li><p>region</p></li>
<li><p>id</p></li>
<li><p>resource.accessKeyDetails.accessKeyId</p></li>
<li><p>resource.accessKeyDetails.principalId</p></li>
<li><p>resource.accessKeyDetails.userName</p></li>
<li><p>resource.accessKeyDetails.userType</p></li>
<li><p>resource.instanceDetails.iamInstanceProfile.id</p></li>
<li><p>resource.instanceDetails.imageId</p></li>
<li><p>resource.instanceDetails.instanceId</p></li>
<li><p>resource.instanceDetails.outpostArn</p></li>
<li><p>resource.instanceDetails.networkInterfaces.ipv6Addresses</p></li>
<li><p>resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress</p></li>
<li><p>resource.instanceDetails.networkInterfaces.publicDnsName</p></li>
<li><p>resource.instanceDetails.networkInterfaces.publicIp</p></li>
<li><p>resource.instanceDetails.networkInterfaces.securityGroups.groupId</p></li>
<li><p>resource.instanceDetails.networkInterfaces.securityGroups.groupName</p></li>
<li><p>resource.instanceDetails.networkInterfaces.subnetId</p></li>
<li><p>resource.instanceDetails.networkInterfaces.vpcId</p></li>
<li><p>resource.instanceDetails.tags.key</p></li>
<li><p>resource.instanceDetails.tags.value</p></li>
<li><p>resource.resourceType</p></li>
<li><p>service.action.actionType</p></li>
<li><p>service.action.awsApiCallAction.api</p></li>
<li><p>service.action.awsApiCallAction.callerType</p></li>
<li><p>service.action.awsApiCallAction.errorCode</p></li>
<li><p>service.action.awsApiCallAction.userAgent</p></li>
<li><p>service.action.awsApiCallAction.remoteIpDetails.city.cityName</p></li>
<li><p>service.action.awsApiCallAction.remoteIpDetails.country.countryName</p></li>
<li><p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV4</p></li>
<li><p>service.action.awsApiCallAction.remoteIpDetails.organization.asn</p></li>
<li><p>service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg</p></li>
<li><p>service.action.awsApiCallAction.serviceName</p></li>
<li><p>service.action.dnsRequestAction.domain</p></li>
<li><p>service.action.networkConnectionAction.blocked</p></li>
<li><p>service.action.networkConnectionAction.connectionDirection</p></li>
<li><p>service.action.networkConnectionAction.localPortDetails.port</p></li>
<li><p>service.action.networkConnectionAction.protocol</p></li>
<li><p>service.action.networkConnectionAction.localIpDetails.ipAddressV4</p></li>
<li><p>service.action.networkConnectionAction.remoteIpDetails.city.cityName</p></li>
<li><p>service.action.networkConnectionAction.remoteIpDetails.country.countryName</p></li>
<li><p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV4</p></li>
<li><p>service.action.networkConnectionAction.remoteIpDetails.organization.asn</p></li>
<li><p>service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg</p></li>
<li><p>service.action.networkConnectionAction.remotePortDetails.port</p></li>
<li><p>service.additionalInfo.threatListName</p></li>
<li><p>resource.s3BucketDetails.publicAccess.effectivePermissions</p></li>
<li><p>resource.s3BucketDetails.name</p></li>
<li><p>resource.s3BucketDetails.tags.key</p></li>
<li><p>resource.s3BucketDetails.tags.value</p></li>
<li><p>resource.s3BucketDetails.type</p></li>
<li><p>service.resourceRole</p></li>
<li><p>severity</p></li>
<li><p>type</p></li>
<li><p>updatedAt</p>
<p>Type: ISO 8601 string format: YYYY-MM-DDTHH:MM:SS.SSSZ or
YYYY-MM-DDTHH:MM:SSZ depending on whether the value contains
milliseconds.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_create_filter_:_ClientToken">ClientToken</code></td>
<td><p>The idempotency token for the create request.</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_create_filter_:_Tags">Tags</code></td>
<td><p>The tags to be added to a new filter resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$create_filter(
      DetectorId = "string",
      Name = "string",
      Description = "string",
      Action = "NOOP"|"ARCHIVE",
      Rank = 123,
      FindingCriteria = list(
        Criterion = list(
          list(
            Eq = list(
              "string"
            ),
            Neq = list(
              "string"
            ),
            Gt = 123,
            Gte = 123,
            Lt = 123,
            Lte = 123,
            Equals = list(
              "string"
            ),
            NotEquals = list(
              "string"
            ),
            GreaterThan = 123,
            GreaterThanOrEqual = 123,
            LessThan = 123,
            LessThanOrEqual = 123
          )
        )
      ),
      ClientToken = "string",
      Tags = list(
        "string"
      )
    )
