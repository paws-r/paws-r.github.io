<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_list_findings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists Amazon GuardDuty findings for the specified detector ID

### Description

Lists Amazon GuardDuty findings for the specified detector ID.

### Usage

    guardduty_list_findings(DetectorId, FindingCriteria, SortCriteria,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_list_findings_:_DetectorId">DetectorId</code></td>
<td><p>[required] The ID of the detector that specifies the GuardDuty
service whose findings you want to list.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_list_findings_:_FindingCriteria">FindingCriteria</code></td>
<td><p>Represents the criteria used for querying findings. Valid values
include:</p>
<ul>
<li><p>JSON field name</p></li>
<li><p>accountId</p></li>
<li><p>region</p></li>
<li><p>confidence</p></li>
<li><p>id</p></li>
<li><p>resource.accessKeyDetails.accessKeyId</p></li>
<li><p>resource.accessKeyDetails.principalId</p></li>
<li><p>resource.accessKeyDetails.userName</p></li>
<li><p>resource.accessKeyDetails.userType</p></li>
<li><p>resource.instanceDetails.iamInstanceProfile.id</p></li>
<li><p>resource.instanceDetails.imageId</p></li>
<li><p>resource.instanceDetails.instanceId</p></li>
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
<li><p>service.action.networkConnectionAction.remoteIpDetails.country.countryName</p></li>
<li><p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV4</p></li>
<li><p>service.action.networkConnectionAction.remoteIpDetails.organization.asn</p></li>
<li><p>service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg</p></li>
<li><p>service.action.networkConnectionAction.remotePortDetails.port</p></li>
<li><p>service.additionalInfo.threatListName</p></li>
<li><p>service.archived</p>
<p>When this attribute is set to 'true', only archived findings are
listed. When it's set to 'false', only unarchived findings are listed.
When this attribute is not set, all existing findings are
listed.</p></li>
<li><p>service.resourceRole</p></li>
<li><p>severity</p></li>
<li><p>type</p></li>
<li><p>updatedAt</p>
<p>Type: Timestamp in Unix Epoch millisecond format:
1486685375000</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_list_findings_:_SortCriteria">SortCriteria</code></td>
<td><p>Represents the criteria used for sorting findings.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_list_findings_:_MaxResults">MaxResults</code></td>
<td><p>You can use this parameter to indicate the maximum number of
items you want in the response. The default value is 50. The maximum
value is 50.</p></td>
</tr>
<tr class="odd">
<td><code id="guardduty_list_findings_:_NextToken">NextToken</code></td>
<td><p>You can use this parameter when paginating results. Set the value
of this parameter to null on your first call to the list action. For
subsequent calls to the action, fill nextToken in the request with the
value of NextToken from the previous response to continue listing
data.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FindingIds = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_findings(
      DetectorId = "string",
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
      SortCriteria = list(
        AttributeName = "string",
        OrderBy = "ASC"|"DESC"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
