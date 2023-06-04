<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_describe_ruleset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves detailed information about the ruleset

### Description

Retrieves detailed information about the ruleset.

### Usage

    gluedatabrew_describe_ruleset(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_describe_ruleset_:_Name">Name</code></td>
<td><p>[required] The name of the ruleset to be described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Description = "string",
      TargetArn = "string",
      Rules = list(
        list(
          Name = "string",
          Disabled = TRUE|FALSE,
          CheckExpression = "string",
          SubstitutionMap = list(
            "string"
          ),
          Threshold = list(
            Value = 123.0,
            Type = "GREATER_THAN_OR_EQUAL"|"LESS_THAN_OR_EQUAL"|"GREATER_THAN"|"LESS_THAN",
            Unit = "COUNT"|"PERCENTAGE"
          ),
          ColumnSelectors = list(
            list(
              Regex = "string",
              Name = "string"
            )
          )
        )
      ),
      CreateDate = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBy = "string",
      LastModifiedBy = "string",
      LastModifiedDate = as.POSIXct(
        "2015-01-01"
      ),
      ResourceArn = "string",
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$describe_ruleset(
      Name = "string"
    )
