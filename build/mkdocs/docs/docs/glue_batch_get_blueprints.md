<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_batch_get_blueprints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about a list of blueprints

### Description

Retrieves information about a list of blueprints.

### Usage

    glue_batch_get_blueprints(Names, IncludeBlueprint, IncludeParameterSpec)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_batch_get_blueprints_:_Names">Names</code></td>
<td><p>[required] A list of blueprint names.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_batch_get_blueprints_:_IncludeBlueprint">IncludeBlueprint</code></td>
<td><p>Specifies whether or not to include the blueprint in the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_batch_get_blueprints_:_IncludeParameterSpec">IncludeParameterSpec</code></td>
<td><p>Specifies whether or not to include the parameters, as a JSON
string, for the blueprint in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Blueprints = list(
        list(
          Name = "string",
          Description = "string",
          CreatedOn = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedOn = as.POSIXct(
            "2015-01-01"
          ),
          ParameterSpec = "string",
          BlueprintLocation = "string",
          BlueprintServiceLocation = "string",
          Status = "CREATING"|"ACTIVE"|"UPDATING"|"FAILED",
          ErrorMessage = "string",
          LastActiveDefinition = list(
            Description = "string",
            LastModifiedOn = as.POSIXct(
              "2015-01-01"
            ),
            ParameterSpec = "string",
            BlueprintLocation = "string",
            BlueprintServiceLocation = "string"
          )
        )
      ),
      MissingBlueprints = list(
        "string"
      )
    )

### Request syntax

    svc$batch_get_blueprints(
      Names = list(
        "string"
      ),
      IncludeBlueprint = TRUE|FALSE,
      IncludeParameterSpec = TRUE|FALSE
    )
