<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_traffic_distribution_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a traffic distribution group given an Amazon Connect instance that has been replicated

### Description

Creates a traffic distribution group given an Amazon Connect instance
that has been replicated.

For more information about creating traffic distribution groups, see
[Set up traffic distribution
groups](https://docs.aws.amazon.com/connect/latest/adminguide/setup-traffic-distribution-groups.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_create_traffic_distribution_group(Name, Description, InstanceId,
      ClientToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_create_traffic_distribution_group_:_Name">Name</code></td>
<td><p>[required] The name for the traffic distribution group.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_traffic_distribution_group_:_Description">Description</code></td>
<td><p>A description for the traffic distribution group.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_traffic_distribution_group_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance that has
been replicated. You can find the <code>instanceId</code> in the ARN of
the instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_traffic_distribution_group_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_traffic_distribution_group_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource. For example, { "tags": {"key1":"value1", "key2":"value2"}
}.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string",
      Arn = "string"
    )

### Request syntax

    svc$create_traffic_distribution_group(
      Name = "string",
      Description = "string",
      InstanceId = "string",
      ClientToken = "string",
      Tags = list(
        "string"
      )
    )
