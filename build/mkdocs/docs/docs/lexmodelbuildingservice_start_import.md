<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_start_import</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a job to import a resource to Amazon Lex

### Description

Starts a job to import a resource to Amazon Lex.

### Usage

    lexmodelbuildingservice_start_import(payload, resourceType,
      mergeStrategy, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_start_import_:_payload">payload</code></td>
<td><p>[required] A zip archive in binary format. The archive should
contain one file, a JSON file containing the resource to import. The
resource should match the type specified in the
<code>resourceType</code> field.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_start_import_:_resourceType">resourceType</code></td>
<td><p>[required] Specifies the type of resource to export. Each
resource also exports any resources that it depends on.</p>
<ul>
<li><p>A bot exports dependent intents.</p></li>
<li><p>An intent exports dependent slot types.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_start_import_:_mergeStrategy">mergeStrategy</code></td>
<td><p>[required] Specifies the action that the
<code>start_import</code> operation should take when there is an
existing resource with the same name.</p>
<ul>
<li><p>FAIL_ON_CONFLICT - The import operation is stopped on the first
conflict between a resource in the import file and an existing resource.
The name of the resource causing the conflict is in the
<code>failureReason</code> field of the response to the
<code>get_import</code> operation.</p>
<p>OVERWRITE_LATEST - The import operation proceeds even if there is a
conflict with an existing resource. The $LASTEST version of the existing
resource is overwritten with the data from the import file.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_start_import_:_tags">tags</code></td>
<td><p>A list of tags to add to the imported bot. You can only add tags
when you import a bot, you can't add tags to an intent or slot
type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      name = "string",
      resourceType = "BOT"|"INTENT"|"SLOT_TYPE",
      mergeStrategy = "OVERWRITE_LATEST"|"FAIL_ON_CONFLICT",
      importId = "string",
      importStatus = "IN_PROGRESS"|"COMPLETE"|"FAILED",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      createdDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$start_import(
      payload = raw,
      resourceType = "BOT"|"INTENT"|"SLOT_TYPE",
      mergeStrategy = "OVERWRITE_LATEST"|"FAIL_ON_CONFLICT",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
