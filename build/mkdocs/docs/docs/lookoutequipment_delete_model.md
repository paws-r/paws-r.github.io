<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_delete_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an ML model currently available for Amazon Lookout for Equipment

### Description

Deletes an ML model currently available for Amazon Lookout for
Equipment. This will prevent it from being used with an inference
scheduler, even one that is already set up.

### Usage

    lookoutequipment_delete_model(ModelName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_delete_model_:_ModelName">ModelName</code></td>
<td><p>[required] The name of the ML model to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_model(
      ModelName = "string"
    )
