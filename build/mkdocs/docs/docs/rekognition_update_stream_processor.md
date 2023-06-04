<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_update_stream_processor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows you to update a stream processor

### Description

Allows you to update a stream processor. You can change some settings
and regions of interest and delete certain parameters.

### Usage

    rekognition_update_stream_processor(Name, SettingsForUpdate,
      RegionsOfInterestForUpdate, DataSharingPreferenceForUpdate,
      ParametersToDelete)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_update_stream_processor_:_Name">Name</code></td>
<td><p>[required] Name of the stream processor that you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_update_stream_processor_:_SettingsForUpdate">SettingsForUpdate</code></td>
<td><p>The stream processor settings that you want to update. Label
detection settings can be updated to detect different labels with a
different minimum confidence.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_update_stream_processor_:_RegionsOfInterestForUpdate">RegionsOfInterestForUpdate</code></td>
<td><p>Specifies locations in the frames where Amazon Rekognition checks
for objects or people. This is an optional parameter for label detection
stream processors.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_update_stream_processor_:_DataSharingPreferenceForUpdate">DataSharingPreferenceForUpdate</code></td>
<td><p>Shows whether you are sharing data with Rekognition to improve
model performance. You can choose this option at the account level or on
a per-stream basis. Note that if you opt out at the account level this
setting is ignored on individual streams.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_update_stream_processor_:_ParametersToDelete">ParametersToDelete</code></td>
<td><p>A list of parameters you want to delete from the stream
processor.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_stream_processor(
      Name = "string",
      SettingsForUpdate = list(
        ConnectedHomeForUpdate = list(
          Labels = list(
            "string"
          ),
          MinConfidence = 123.0
        )
      ),
      RegionsOfInterestForUpdate = list(
        list(
          BoundingBox = list(
            Width = 123.0,
            Height = 123.0,
            Left = 123.0,
            Top = 123.0
          ),
          Polygon = list(
            list(
              X = 123.0,
              Y = 123.0
            )
          )
        )
      ),
      DataSharingPreferenceForUpdate = list(
        OptIn = TRUE|FALSE
      ),
      ParametersToDelete = list(
        "ConnectedHomeMinConfidence"|"RegionsOfInterest"
      )
    )
