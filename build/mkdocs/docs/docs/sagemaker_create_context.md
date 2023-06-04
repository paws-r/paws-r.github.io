<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_context</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a context

### Description

Creates a *context*. A context is a lineage tracking entity that
represents a logical grouping of other tracking or experiment entities.
Some examples are an endpoint and a model package. For more information,
see [Amazon SageMaker ML Lineage
Tracking](https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).

### Usage

    sagemaker_create_context(ContextName, Source, ContextType, Description,
      Properties, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_context_:_ContextName">ContextName</code></td>
<td><p>[required] The name of the context. Must be unique to your
account in an Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_context_:_Source">Source</code></td>
<td><p>[required] The source type, ID, and URI.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_context_:_ContextType">ContextType</code></td>
<td><p>[required] The context type.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_context_:_Description">Description</code></td>
<td><p>The description of the context.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_context_:_Properties">Properties</code></td>
<td><p>A list of properties to add to the context.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_context_:_Tags">Tags</code></td>
<td><p>A list of tags to apply to the context.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContextArn = "string"
    )

### Request syntax

    svc$create_context(
      ContextName = "string",
      Source = list(
        SourceUri = "string",
        SourceType = "string",
        SourceId = "string"
      ),
      ContextType = "string",
      Description = "string",
      Properties = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
