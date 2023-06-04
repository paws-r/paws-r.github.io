<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_create_vpc_link</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational

### Description

Creates a VPC link, under the caller's account in a selected region, in
an asynchronous operation that typically takes 2-4 minutes to complete
and become operational. The caller must have permissions to create and
update VPC Endpoint services.

### Usage

    apigateway_create_vpc_link(name, description, targetArns, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_create_vpc_link_:_name">name</code></td>
<td><p>[required] The name used to label and identify the VPC
link.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_create_vpc_link_:_description">description</code></td>
<td><p>The description of the VPC link.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_create_vpc_link_:_targetArns">targetArns</code></td>
<td><p>[required] The ARN of the network load balancer of the VPC
targeted by the VPC link. The network load balancer must be owned by the
same AWS account of the API owner.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_create_vpc_link_:_tags">tags</code></td>
<td><p>The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with <code style="white-space: pre;">⁠aws:⁠</code>. The tag value
can be up to 256 characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      name = "string",
      description = "string",
      targetArns = list(
        "string"
      ),
      status = "AVAILABLE"|"PENDING"|"DELETING"|"FAILED",
      statusMessage = "string",
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$create_vpc_link(
      name = "string",
      description = "string",
      targetArns = list(
        "string"
      ),
      tags = list(
        "string"
      )
    )
