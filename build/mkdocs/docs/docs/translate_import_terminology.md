<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_import_terminology</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a custom terminology, depending on whether one already exists for the given terminology name

### Description

Creates or updates a custom terminology, depending on whether one
already exists for the given terminology name. Importing a terminology
with the same name as an existing one will merge the terminologies based
on the chosen merge strategy. The only supported merge strategy is
OVERWRITE, where the imported terminology overwrites the existing
terminology of the same name.

If you import a terminology that overwrites an existing one, the new
terminology takes up to 10 minutes to fully propagate. After that,
translations have access to the new terminology.

### Usage

    translate_import_terminology(Name, MergeStrategy, Description,
      TerminologyData, EncryptionKey, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="translate_import_terminology_:_Name">Name</code></td>
<td><p>[required] The name of the custom terminology being
imported.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_import_terminology_:_MergeStrategy">MergeStrategy</code></td>
<td><p>[required] The merge strategy of the custom terminology being
imported. Currently, only the OVERWRITE merge strategy is supported. In
this case, the imported terminology will overwrite an existing
terminology of the same name.</p></td>
</tr>
<tr class="odd">
<td><code
id="translate_import_terminology_:_Description">Description</code></td>
<td><p>The description of the custom terminology being
imported.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_import_terminology_:_TerminologyData">TerminologyData</code></td>
<td><p>[required] The terminology data for the custom terminology being
imported.</p></td>
</tr>
<tr class="odd">
<td><code
id="translate_import_terminology_:_EncryptionKey">EncryptionKey</code></td>
<td><p>The encryption key for the custom terminology being
imported.</p></td>
</tr>
<tr class="even">
<td><code id="translate_import_terminology_:_Tags">Tags</code></td>
<td><p>Tags to be associated with this resource. A tag is a key-value
pair that adds metadata to a resource. Each tag key for the resource
must be unique. For more information, see <a
href="https://docs.aws.amazon.com/translate/latest/dg/tagging.html">Tagging
your resources</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TerminologyProperties = list(
        Name = "string",
        Description = "string",
        Arn = "string",
        SourceLanguageCode = "string",
        TargetLanguageCodes = list(
          "string"
        ),
        EncryptionKey = list(
          Type = "KMS",
          Id = "string"
        ),
        SizeBytes = 123,
        TermCount = 123,
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedAt = as.POSIXct(
          "2015-01-01"
        ),
        Directionality = "UNI"|"MULTI",
        Message = "string",
        SkippedTermCount = 123,
        Format = "CSV"|"TMX"|"TSV"
      ),
      AuxiliaryDataLocation = list(
        RepositoryType = "string",
        Location = "string"
      )
    )

### Request syntax

    svc$import_terminology(
      Name = "string",
      MergeStrategy = "OVERWRITE",
      Description = "string",
      TerminologyData = list(
        File = raw,
        Format = "CSV"|"TMX"|"TSV",
        Directionality = "UNI"|"MULTI"
      ),
      EncryptionKey = list(
        Type = "KMS",
        Id = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
