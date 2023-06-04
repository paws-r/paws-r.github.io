<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_create_replication_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A replication set replicates and encrypts your data to the provided Regions with the provided KMS key

### Description

A replication set replicates and encrypts your data to the provided
Regions with the provided KMS key.

### Usage

    ssmincidents_create_replication_set(clientToken, regions, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_create_replication_set_:_clientToken">clientToken</code></td>
<td><p>A token that ensures that the operation is called only once with
the specified details.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_create_replication_set_:_regions">regions</code></td>
<td><p>[required] The Regions that Incident Manager replicates your data
to. You can have up to three Regions in your replication set.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_create_replication_set_:_tags">tags</code></td>
<td><p>A list of tags to add to the replication set.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string"
    )

### Request syntax

    svc$create_replication_set(
      clientToken = "string",
      regions = list(
        list(
          sseKmsKeyId = "string"
        )
      ),
      tags = list(
        "string"
      )
    )
