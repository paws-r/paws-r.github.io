<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_detect_protective_equipment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detects Personal Protective Equipment (PPE) worn by people detected in an image

### Description

Detects Personal Protective Equipment (PPE) worn by people detected in
an image. Amazon Rekognition can detect the following types of PPE.

-   Face cover

-   Hand cover

-   Head cover

You pass the input image as base64-encoded image bytes or as a reference
to an image in an Amazon S3 bucket. The image must be either a PNG or
JPG formatted file.

`detect_protective_equipment` detects PPE worn by up to 15 persons
detected in an image.

For each person detected in the image the API returns an array of body
parts (face, head, left-hand, right-hand). For each body part, an array
of detected items of PPE is returned, including an indicator of whether
or not the PPE covers the body part. The API returns the confidence it
has in each detection (person, PPE, body part and body part coverage).
It also returns a bounding box (BoundingBox) for each detected person
and each detected item of PPE.

You can optionally request a summary of detected PPE items with the
`SummarizationAttributes` input parameter. The summary provides the
following information.

-   The persons detected as wearing all of the types of PPE that you
    specify.

-   The persons detected as not wearing all of the types PPE that you
    specify.

-   The persons detected where PPE adornment could not be determined.

This is a stateless API operation. That is, the operation does not
persist any data.

This operation requires permissions to perform the
`rekognition:DetectProtectiveEquipment` action.

### Usage

    rekognition_detect_protective_equipment(Image, SummarizationAttributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_detect_protective_equipment_:_Image">Image</code></td>
<td><p>[required] The image in which you want to detect PPE on detected
persons. The image can be passed as image bytes or you can reference an
image stored in an Amazon S3 bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_detect_protective_equipment_:_SummarizationAttributes">SummarizationAttributes</code></td>
<td><p>An array of PPE types that you want to summarize.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProtectiveEquipmentModelVersion = "string",
      Persons = list(
        list(
          BodyParts = list(
            list(
              Name = "FACE"|"HEAD"|"LEFT_HAND"|"RIGHT_HAND",
              Confidence = 123.0,
              EquipmentDetections = list(
                list(
                  BoundingBox = list(
                    Width = 123.0,
                    Height = 123.0,
                    Left = 123.0,
                    Top = 123.0
                  ),
                  Confidence = 123.0,
                  Type = "FACE_COVER"|"HAND_COVER"|"HEAD_COVER",
                  CoversBodyPart = list(
                    Confidence = 123.0,
                    Value = TRUE|FALSE
                  )
                )
              )
            )
          ),
          BoundingBox = list(
            Width = 123.0,
            Height = 123.0,
            Left = 123.0,
            Top = 123.0
          ),
          Confidence = 123.0,
          Id = 123
        )
      ),
      Summary = list(
        PersonsWithRequiredEquipment = list(
          123
        ),
        PersonsWithoutRequiredEquipment = list(
          123
        ),
        PersonsIndeterminate = list(
          123
        )
      )
    )

### Request syntax

    svc$detect_protective_equipment(
      Image = list(
        Bytes = raw,
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      SummarizationAttributes = list(
        MinConfidence = 123.0,
        RequiredEquipmentTypes = list(
          "FACE_COVER"|"HAND_COVER"|"HEAD_COVER"
        )
      )
    )
