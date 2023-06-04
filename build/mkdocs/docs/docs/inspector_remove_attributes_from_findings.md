<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_remove_attributes_from_findings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes entire attributes (key and value pairs) from the findings that are specified by the ARNs of the findings where an attribute with the specified key exists

### Description

Removes entire attributes (key and value pairs) from the findings that
are specified by the ARNs of the findings where an attribute with the
specified key exists.

### Usage

    inspector_remove_attributes_from_findings(findingArns, attributeKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_remove_attributes_from_findings_:_findingArns">findingArns</code></td>
<td><p>[required] The ARNs that specify the findings that you want to
remove attributes from.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_remove_attributes_from_findings_:_attributeKeys">attributeKeys</code></td>
<td><p>[required] The array of attribute keys that you want to remove
from specified findings.</p></td>
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

    svc$remove_attributes_from_findings(
      findingArns = list(
        "string"
      ),
      attributeKeys = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # Removes entire attributes (key and value pairs) from the findings that
    # are specified by the ARNs of the findings where an attribute with the
    # specified key exists.
    svc$remove_attributes_from_findings(
      attributeKeys = list(
        "key=Example,value=example"
      ),
      findingArns = list(
        "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-..."
      )
    )

    ## End(Not run)
