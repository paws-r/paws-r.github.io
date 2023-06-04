<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_list_endpoints_by_platform_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the endpoints and endpoint attributes for devices in a supported push notification service, such as GCM (Firebase Cloud Messaging) and APNS

### Description

Lists the endpoints and endpoint attributes for devices in a supported
push notification service, such as GCM (Firebase Cloud Messaging) and
APNS. The results for `list_endpoints_by_platform_application` are
paginated and return a limited list of endpoints, up to 100. If
additional records are available after the first page results, then a
NextToken string will be returned. To receive the next page, you call
`list_endpoints_by_platform_application` again using the NextToken
string received from the previous call. When there are no more records
to return, NextToken will be null. For more information, see [Using
Amazon SNS Mobile Push
Notifications](https://docs.aws.amazon.com/sns/latest/dg/sns-mobile-application-as-subscriber.html).

This action is throttled at 30 transactions per second (TPS).

### Usage

    sns_list_endpoints_by_platform_application(PlatformApplicationArn,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_list_endpoints_by_platform_application_:_PlatformApplicationArn">PlatformApplicationArn</code></td>
<td><p>[required] PlatformApplicationArn for
ListEndpointsByPlatformApplicationInput action.</p></td>
</tr>
<tr class="even">
<td><code
id="sns_list_endpoints_by_platform_application_:_NextToken">NextToken</code></td>
<td><p>NextToken string is used when calling
ListEndpointsByPlatformApplication action to retrieve additional records
that are available after the first page results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Endpoints = list(
        list(
          EndpointArn = "string",
          Attributes = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_endpoints_by_platform_application(
      PlatformApplicationArn = "string",
      NextToken = "string"
    )
