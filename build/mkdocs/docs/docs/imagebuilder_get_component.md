<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_get_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a component object

### Description

Gets a component object.

### Usage

    imagebuilder_get_component(componentBuildVersionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_get_component_:_componentBuildVersionArn">componentBuildVersionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the component that
you want to get. Regex requires the suffix <code
style="white-space: pre;">⁠/\\d+$⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      component = list(
        arn = "string",
        name = "string",
        version = "string",
        description = "string",
        changeDescription = "string",
        type = "BUILD"|"TEST",
        platform = "Windows"|"Linux",
        supportedOsVersions = list(
          "string"
        ),
        state = list(
          status = "DEPRECATED",
          reason = "string"
        ),
        parameters = list(
          list(
            name = "string",
            type = "string",
            defaultValue = list(
              "string"
            ),
            description = "string"
          )
        ),
        owner = "string",
        data = "string",
        kmsKeyId = "string",
        encrypted = TRUE|FALSE,
        dateCreated = "string",
        tags = list(
          "string"
        ),
        publisher = "string",
        obfuscate = TRUE|FALSE
      )
    )

### Request syntax

    svc$get_component(
      componentBuildVersionArn = "string"
    )
