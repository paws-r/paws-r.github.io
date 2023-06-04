<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_put_label</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates label

### Description

Creates or updates label. A label classifies an event as fraudulent or
legitimate. Labels are associated with event types and used to train
supervised machine learning models in Amazon Fraud Detector.

### Usage

    frauddetector_put_label(name, description, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_put_label_:_name">name</code></td>
<td><p>[required] The label name.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_put_label_:_description">description</code></td>
<td><p>The label description.</p></td>
</tr>
<tr class="odd">
<td><code id="frauddetector_put_label_:_tags">tags</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_label(
      name = "string",
      description = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
