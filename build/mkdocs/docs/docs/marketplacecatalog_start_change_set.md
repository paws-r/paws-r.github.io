<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacecatalog_start_change_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows you to request changes for your entities

### Description

Allows you to request changes for your entities. Within a single
`ChangeSet`, you can't start the same change type against the same
entity multiple times. Additionally, when a `ChangeSet` is running, all
the entities targeted by the different changes are locked until the
change set has completed (either succeeded, cancelled, or failed). If
you try to start a change set containing a change against an entity that
is already locked, you will receive a `ResourceInUseException` error.

For example, you can't start the `ChangeSet` described in the
[example](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_StartChangeSet.html#API_StartChangeSet_Examples)
later in this topic because it contains two changes to run the same
change type (`AddRevisions`) against the same entity (`⁠entity-id@1⁠`).

For more information about working with change sets, see [Working with
change
sets](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets).
For information on change types for single-AMI products, see [Working
with single-AMI
products](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#working-with-single-AMI-products).
Als, for more information on change types available for container-based
products, see [Working with container
products](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/container-products.html#working-with-container-products).

### Usage

    marketplacecatalog_start_change_set(Catalog, ChangeSet, ChangeSetName,
      ClientRequestToken, ChangeSetTags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacecatalog_start_change_set_:_Catalog">Catalog</code></td>
<td><p>[required] The catalog related to the request. Fixed value:
<code>AWSMarketplace</code></p></td>
</tr>
<tr class="even">
<td><code
id="marketplacecatalog_start_change_set_:_ChangeSet">ChangeSet</code></td>
<td><p>[required] Array of <code>change</code> object.</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplacecatalog_start_change_set_:_ChangeSetName">ChangeSetName</code></td>
<td><p>Optional case sensitive string of up to 100 ASCII characters. The
change set name can be used to filter the list of change sets.</p></td>
</tr>
<tr class="even">
<td><code
id="marketplacecatalog_start_change_set_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique token to identify the request to ensure
idempotency.</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplacecatalog_start_change_set_:_ChangeSetTags">ChangeSetTags</code></td>
<td><p>A list of objects specifying each key name and value for the
<code>ChangeSetTags</code> property.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeSetId = "string",
      ChangeSetArn = "string"
    )

### Request syntax

    svc$start_change_set(
      Catalog = "string",
      ChangeSet = list(
        list(
          ChangeType = "string",
          Entity = list(
            Type = "string",
            Identifier = "string"
          ),
          EntityTags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          Details = "string",
          ChangeName = "string"
        )
      ),
      ChangeSetName = "string",
      ClientRequestToken = "string",
      ChangeSetTags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
