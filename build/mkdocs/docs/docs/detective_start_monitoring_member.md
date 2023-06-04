<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_start_monitoring_member</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends a request to enable data ingest for a member account that has a status of ACCEPTED\_BUT\_DISABLED

### Description

Sends a request to enable data ingest for a member account that has a
status of `ACCEPTED_BUT_DISABLED`.

For valid member accounts, the status is updated as follows.

-   If Detective enabled the member account, then the new status is
    `ENABLED`.

-   If Detective cannot enable the member account, the status remains
    `ACCEPTED_BUT_DISABLED`.

### Usage

    detective_start_monitoring_member(GraphArn, AccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="detective_start_monitoring_member_:_GraphArn">GraphArn</code></td>
<td><p>[required] The ARN of the behavior graph.</p></td>
</tr>
<tr class="even">
<td><code
id="detective_start_monitoring_member_:_AccountId">AccountId</code></td>
<td><p>[required] The account ID of the member account to try to
enable.</p>
<p>The account must be an invited member account with a status of
<code>ACCEPTED_BUT_DISABLED</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_monitoring_member(
      GraphArn = "string",
      AccountId = "string"
    )
