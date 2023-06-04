<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_list_platform_applications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the platform application objects for the supported push notification services, such as APNS and GCM (Firebase Cloud Messaging)

### Description

Lists the platform application objects for the supported push
notification services, such as APNS and GCM (Firebase Cloud Messaging).
The results for `list_platform_applications` are paginated and return a
limited list of applications, up to 100. If additional records are
available after the first page results, then a NextToken string will be
returned. To receive the next page, you call
`list_platform_applications` using the NextToken string received from
the previous call. When there are no more records to return, `NextToken`
will be null. For more information, see [Using Amazon SNS Mobile Push
Notifications](https://docs.aws.amazon.com/sns/latest/dg/sns-mobile-application-as-subscriber.html).

This action is throttled at 15 transactions per second (TPS).

### Usage

    sns_list_platform_applications(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_list_platform_applications_:_NextToken">NextToken</code></td>
<td><p>NextToken string is used when calling ListPlatformApplications
action to retrieve additional records that are available after the first
page results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PlatformApplications = list(
        list(
          PlatformApplicationArn = "string",
          Attributes = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_platform_applications(
      NextToken = "string"
    )
