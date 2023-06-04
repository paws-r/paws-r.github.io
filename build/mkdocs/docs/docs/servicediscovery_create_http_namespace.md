<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_create_http_namespace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an HTTP namespace

### Description

Creates an HTTP namespace. Service instances registered using an HTTP
namespace can be discovered using a `discover_instances` request but
can't be discovered using DNS.

For the current quota on the number of namespaces that you can create
using the same Amazon Web Services account, see [Cloud Map
quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
in the *Cloud Map Developer Guide*.

### Usage

    servicediscovery_create_http_namespace(Name, CreatorRequestId,
      Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_create_http_namespace_:_Name">Name</code></td>
<td><p>[required] The name that you want to assign to this
namespace.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_create_http_namespace_:_CreatorRequestId">CreatorRequestId</code></td>
<td><p>A unique string that identifies the request and that allows
failed <code>create_http_namespace</code> requests to be retried without
the risk of running the operation twice. <code>CreatorRequestId</code>
can be any unique string (for example, a date/time stamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="servicediscovery_create_http_namespace_:_Description">Description</code></td>
<td><p>A description for the namespace.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_create_http_namespace_:_Tags">Tags</code></td>
<td><p>The tags to add to the namespace. Each tag consists of a key and
an optional value that you define. Tags keys can be up to 128 characters
in length, and tag values can be up to 256 characters in
length.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$create_http_namespace(
      Name = "string",
      CreatorRequestId = "string",
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example creates an HTTP namespace.
    svc$create_http_namespace(
      CreatorRequestId = "example-creator-request-id-0001",
      Description = "Example.com AWS Cloud Map HTTP Namespace",
      Name = "example-http.com"
    )

    ## End(Not run)
