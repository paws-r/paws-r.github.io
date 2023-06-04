<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_create_private_dns_namespace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a private namespace based on DNS, which is visible only inside a specified Amazon VPC

### Description

Creates a private namespace based on DNS, which is visible only inside a
specified Amazon VPC. The namespace defines your service naming scheme.
For example, if you name your namespace `example.com` and name your
service `backend`, the resulting DNS name for the service is
`backend.example.com`. Service instances that are registered using a
private DNS namespace can be discovered using either a
`discover_instances` request or using DNS. For the current quota on the
number of namespaces that you can create using the same Amazon Web
Services account, see [Cloud Map
quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
in the *Cloud Map Developer Guide*.

### Usage

    servicediscovery_create_private_dns_namespace(Name, CreatorRequestId,
      Description, Vpc, Tags, Properties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_create_private_dns_namespace_:_Name">Name</code></td>
<td><p>[required] The name that you want to assign to this namespace.
When you create a private DNS namespace, Cloud Map automatically creates
an Amazon Route 53 private hosted zone that has the same name as the
namespace.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_create_private_dns_namespace_:_CreatorRequestId">CreatorRequestId</code></td>
<td><p>A unique string that identifies the request and that allows
failed <code>create_private_dns_namespace</code> requests to be retried
without the risk of running the operation twice.
<code>CreatorRequestId</code> can be any unique string (for example, a
date/timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="servicediscovery_create_private_dns_namespace_:_Description">Description</code></td>
<td><p>A description for the namespace.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_create_private_dns_namespace_:_Vpc">Vpc</code></td>
<td><p>[required] The ID of the Amazon VPC that you want to associate
the namespace with.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicediscovery_create_private_dns_namespace_:_Tags">Tags</code></td>
<td><p>The tags to add to the namespace. Each tag consists of a key and
an optional value that you define. Tags keys can be up to 128 characters
in length, and tag values can be up to 256 characters in
length.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_create_private_dns_namespace_:_Properties">Properties</code></td>
<td><p>Properties for the private DNS namespace.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$create_private_dns_namespace(
      Name = "string",
      CreatorRequestId = "string",
      Description = "string",
      Vpc = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      Properties = list(
        DnsProperties = list(
          SOA = list(
            TTL = 123
          )
        )
      )
    )

### Examples

    ## Not run: 
    # Example: Create private DNS namespace
    svc$create_private_dns_namespace(
      CreatorRequestId = "eedd6892-50f3-41b2-8af9-611d6e1d1a8c",
      Name = "example.com",
      Vpc = "vpc-1c56417b"
    )

    ## End(Not run)
