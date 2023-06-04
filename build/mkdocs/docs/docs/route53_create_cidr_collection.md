<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_create_cidr_collection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a CIDR collection in the current Amazon Web Services account

### Description

Creates a CIDR collection in the current Amazon Web Services account.

### Usage

    route53_create_cidr_collection(Name, CallerReference)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_create_cidr_collection_:_Name">Name</code></td>
<td><p>[required] A unique identifier for the account that can be used
to reference the collection from other API calls.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_create_cidr_collection_:_CallerReference">CallerReference</code></td>
<td><p>[required] A client-specific token that allows requests to be
securely retried so that the intended outcome will only occur once,
retries receive a similar response, and there are no additional edge
cases to handle.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Collection = list(
        Arn = "string",
        Id = "string",
        Name = "string",
        Version = 123
      ),
      Location = "string"
    )

### Request syntax

    svc$create_cidr_collection(
      Name = "string",
      CallerReference = "string"
    )
