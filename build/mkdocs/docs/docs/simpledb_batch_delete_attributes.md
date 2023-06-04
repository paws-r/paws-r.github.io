<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>simpledb_batch_delete_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Performs multiple DeleteAttributes operations in a single call, which reduces round trips and latencies

### Description

Performs multiple DeleteAttributes operations in a single call, which
reduces round trips and latencies. This enables Amazon SimpleDB to
optimize requests, which generally yields better throughput.

If you specify BatchDeleteAttributes without attributes or values, all
the attributes for the item are deleted.

BatchDeleteAttributes is an idempotent operation; running it multiple
times on the same item or attribute doesn't result in an error.

The BatchDeleteAttributes operation succeeds or fails in its entirety.
There are no partial deletes. You can execute multiple
BatchDeleteAttributes operations and other operations in parallel.
However, large numbers of concurrent BatchDeleteAttributes calls can
result in Service Unavailable (503) responses.

This operation is vulnerable to exceeding the maximum URL size when
making a REST request using the HTTP GET method.

This operation does not support conditions using Expected.X.Name,
Expected.X.Value, or Expected.X.Exists.

The following limitations are enforced for this operation:

-   1 MB request size

-   25 item limit per BatchDeleteAttributes operation

### Usage

    simpledb_batch_delete_attributes(DomainName, Items)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="simpledb_batch_delete_attributes_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain in which the attributes are
being deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="simpledb_batch_delete_attributes_:_Items">Items</code></td>
<td><p>[required] A list of items on which to perform the
operation.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$batch_delete_attributes(
      DomainName = "string",
      Items = list(
        list(
          Name = "string",
          Attributes = list(
            list(
              Name = "string",
              Value = "string"
            )
          )
        )
      )
    )
