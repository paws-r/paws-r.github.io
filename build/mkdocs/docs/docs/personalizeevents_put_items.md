<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalizeevents_put_items</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more items to an Items dataset

### Description

Adds one or more items to an Items dataset. For more information see
[Importing Items
Incrementally](https://docs.aws.amazon.com/personalize/latest/dg/importing-items.html).

### Usage

    personalizeevents_put_items(datasetArn, items)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalizeevents_put_items_:_datasetArn">datasetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Items dataset
you are adding the item or items to.</p></td>
</tr>
<tr class="even">
<td><code id="personalizeevents_put_items_:_items">items</code></td>
<td><p>[required] A list of item data.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_items(
      datasetArn = "string",
      items = list(
        list(
          itemId = "string",
          properties = "string"
        )
      )
    )
