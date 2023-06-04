<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_add_attributes_to_findings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns attributes (key and value pairs) to the findings that are specified by the ARNs of the findings

### Description

Assigns attributes (key and value pairs) to the findings that are
specified by the ARNs of the findings.

### Usage

    inspector_add_attributes_to_findings(findingArns, attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_add_attributes_to_findings_:_findingArns">findingArns</code></td>
<td><p>[required] The ARNs that specify the findings that you want to
assign attributes to.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_add_attributes_to_findings_:_attributes">attributes</code></td>
<td><p>[required] The array of attributes that you want to assign to
specified findings.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      failedItems = list(
        list(
          failureCode = "INVALID_ARN"|"DUPLICATE_ARN"|"ITEM_DOES_NOT_EXIST"|"ACCESS_DENIED"|"LIMIT_EXCEEDED"|"INTERNAL_ERROR",
          retryable = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$add_attributes_to_findings(
      findingArns = list(
        "string"
      ),
      attributes = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # Assigns attributes (key and value pairs) to the findings that are
    # specified by the ARNs of the findings.
    svc$add_attributes_to_findings(
      attributes = list(
        list(
          key = "Example",
          value = "example"
        )
      ),
      findingArns = list(
        "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-..."
      )
    )

    ## End(Not run)
