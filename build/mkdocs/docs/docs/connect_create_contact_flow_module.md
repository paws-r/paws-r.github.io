<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_contact_flow_module</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a flow module for the specified Amazon Connect instance

### Description

Creates a flow module for the specified Amazon Connect instance.

### Usage

    connect_create_contact_flow_module(InstanceId, Name, Description,
      Content, Tags, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_create_contact_flow_module_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_contact_flow_module_:_Name">Name</code></td>
<td><p>[required] The name of the flow module.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_contact_flow_module_:_Description">Description</code></td>
<td><p>The description of the flow module.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_contact_flow_module_:_Content">Content</code></td>
<td><p>[required] The content of the flow module.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_contact_flow_module_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource. For example, { "tags": {"key1":"value1", "key2":"value2"}
}.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_contact_flow_module_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
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

    svc$create_contact_flow_module(
      InstanceId = "string",
      Name = "string",
      Description = "string",
      Content = "string",
      Tags = list(
        "string"
      ),
      ClientToken = "string"
    )
