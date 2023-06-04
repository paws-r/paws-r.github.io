<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_get_telemetry_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Information about the data that is collected for the specified assessment run

### Description

Information about the data that is collected for the specified
assessment run.

### Usage

    inspector_get_telemetry_metadata(assessmentRunArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_get_telemetry_metadata_:_assessmentRunArn">assessmentRunArn</code></td>
<td><p>[required] The ARN that specifies the assessment run that has the
telemetry data that you want to obtain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      telemetryMetadata = list(
        list(
          messageType = "string",
          count = 123,
          dataSize = 123
        )
      )
    )

### Request syntax

    svc$get_telemetry_metadata(
      assessmentRunArn = "string"
    )

### Examples

    ## Not run: 
    # Information about the data that is collected for the specified
    # assessment run.
    svc$get_telemetry_metadata(
      assessmentRunArn = "arn:aws:inspector:us-west-2:123456789012:target/0-0kF..."
    )

    ## End(Not run)
