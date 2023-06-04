<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_contact_references</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

For the specified `referenceTypes`, returns a list of references
associated with the contact.

### Usage

    connect_list_contact_references(InstanceId, ContactId, ReferenceTypes,
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
id="connect_list_contact_references_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_contact_references_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the initial contact.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_list_contact_references_:_ReferenceTypes">ReferenceTypes</code></td>
<td><p>[required] The type of reference.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_contact_references_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p>
<p>This is not expected to be set, because the value returned in the
previous response is always null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReferenceSummaryList = list(
        list(
          Url = list(
            Name = "string",
            Value = "string"
          ),
          Attachment = list(
            Name = "string",
            Value = "string",
            Status = "APPROVED"|"REJECTED"
          ),
          String = list(
            Name = "string",
            Value = "string"
          ),
          Number = list(
            Name = "string",
            Value = "string"
          ),
          Date = list(
            Name = "string",
            Value = "string"
          ),
          Email = list(
            Name = "string",
            Value = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_contact_references(
      InstanceId = "string",
      ContactId = "string",
      ReferenceTypes = list(
        "URL"|"ATTACHMENT"|"NUMBER"|"STRING"|"DATE"|"EMAIL"
      ),
      NextToken = "string"
    )
