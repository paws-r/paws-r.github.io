<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_context</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a context

### Description

Updates a context.

### Usage

    sagemaker_update_context(ContextName, Description, Properties,
      PropertiesToRemove)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_context_:_ContextName">ContextName</code></td>
<td><p>[required] The name of the context to update.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_context_:_Description">Description</code></td>
<td><p>The new description for the context.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_context_:_Properties">Properties</code></td>
<td><p>The new list of properties. Overwrites the current property
list.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_context_:_PropertiesToRemove">PropertiesToRemove</code></td>
<td><p>A list of properties to remove.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContextArn = "string"
    )

### Request syntax

    svc$update_context(
      ContextName = "string",
      Description = "string",
      Properties = list(
        "string"
      ),
      PropertiesToRemove = list(
        "string"
      )
    )
