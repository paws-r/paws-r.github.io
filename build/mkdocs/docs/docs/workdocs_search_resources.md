<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_search_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches metadata and the content of folders, documents, document versions, and comments

### Description

Searches metadata and the content of folders, documents, document
versions, and comments.

### Usage

    workdocs_search_resources(AuthenticationToken, QueryText, QueryScopes,
      OrganizationId, AdditionalResponseFields, Filters, OrderBy, Limit,
      Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_search_resources_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_search_resources_:_QueryText">QueryText</code></td>
<td><p>The String to search for. Searches across different text fields
based on request parameters. Use double quotes around the query string
for exact phrase matches.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_search_resources_:_QueryScopes">QueryScopes</code></td>
<td><p>Filter based on the text field type. A Folder has only a name and
no content. A Comment has only content and no name. A Document or
Document Version has a name and content</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_search_resources_:_OrganizationId">OrganizationId</code></td>
<td><p>Filters based on the resource owner OrgId. This is a mandatory
parameter when using Admin SigV4 credentials.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_search_resources_:_AdditionalResponseFields">AdditionalResponseFields</code></td>
<td><p>A list of attributes to include in the response. Used to request
fields that are not normally returned in a standard response.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_search_resources_:_Filters">Filters</code></td>
<td><p>Filters results based on entity metadata.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_search_resources_:_OrderBy">OrderBy</code></td>
<td><p>Order by results in one or more categories.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_search_resources_:_Limit">Limit</code></td>
<td><p>Max results count per page.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_search_resources_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
        list(
          ResourceType = "DOCUMENT"|"FOLDER"|"COMMENT"|"DOCUMENT_VERSION",
          WebUrl = "string",
          DocumentMetadata = list(
            Id = "string",
            CreatorId = "string",
            ParentFolderId = "string",
            CreatedTimestamp = as.POSIXct(
              "2015-01-01"
            ),
            ModifiedTimestamp = as.POSIXct(
              "2015-01-01"
            ),
            LatestVersionMetadata = list(
              Id = "string",
              Name = "string",
              ContentType = "string",
              Size = 123,
              Signature = "string",
              Status = "INITIALIZED"|"ACTIVE",
              CreatedTimestamp = as.POSIXct(
                "2015-01-01"
              ),
              ModifiedTimestamp = as.POSIXct(
                "2015-01-01"
              ),
              ContentCreatedTimestamp = as.POSIXct(
                "2015-01-01"
              ),
              ContentModifiedTimestamp = as.POSIXct(
                "2015-01-01"
              ),
              CreatorId = "string",
              Thumbnail = list(
                "string"
              ),
              Source = list(
                "string"
              )
            ),
            ResourceState = "ACTIVE"|"RESTORING"|"RECYCLING"|"RECYCLED",
            Labels = list(
              "string"
            )
          ),
          FolderMetadata = list(
            Id = "string",
            Name = "string",
            CreatorId = "string",
            ParentFolderId = "string",
            CreatedTimestamp = as.POSIXct(
              "2015-01-01"
            ),
            ModifiedTimestamp = as.POSIXct(
              "2015-01-01"
            ),
            ResourceState = "ACTIVE"|"RESTORING"|"RECYCLING"|"RECYCLED",
            Signature = "string",
            Labels = list(
              "string"
            ),
            Size = 123,
            LatestVersionSize = 123
          ),
          CommentMetadata = list(
            CommentId = "string",
            Contributor = list(
              Id = "string",
              Username = "string",
              EmailAddress = "string",
              GivenName = "string",
              Surname = "string",
              OrganizationId = "string",
              RootFolderId = "string",
              RecycleBinFolderId = "string",
              Status = "ACTIVE"|"INACTIVE"|"PENDING",
              Type = "USER"|"ADMIN"|"POWERUSER"|"MINIMALUSER"|"WORKSPACESUSER",
              CreatedTimestamp = as.POSIXct(
                "2015-01-01"
              ),
              ModifiedTimestamp = as.POSIXct(
                "2015-01-01"
              ),
              TimeZoneId = "string",
              Locale = "en"|"fr"|"ko"|"de"|"es"|"ja"|"ru"|"zh_CN"|"zh_TW"|"pt_BR"|"default",
              Storage = list(
                StorageUtilizedInBytes = 123,
                StorageRule = list(
                  StorageAllocatedInBytes = 123,
                  StorageType = "UNLIMITED"|"QUOTA"
                )
              )
            ),
            CreatedTimestamp = as.POSIXct(
              "2015-01-01"
            ),
            CommentStatus = "DRAFT"|"PUBLISHED"|"DELETED",
            RecipientId = "string",
            ContributorId = "string"
          ),
          DocumentVersionMetadata = list(
            Id = "string",
            Name = "string",
            ContentType = "string",
            Size = 123,
            Signature = "string",
            Status = "INITIALIZED"|"ACTIVE",
            CreatedTimestamp = as.POSIXct(
              "2015-01-01"
            ),
            ModifiedTimestamp = as.POSIXct(
              "2015-01-01"
            ),
            ContentCreatedTimestamp = as.POSIXct(
              "2015-01-01"
            ),
            ContentModifiedTimestamp = as.POSIXct(
              "2015-01-01"
            ),
            CreatorId = "string",
            Thumbnail = list(
              "string"
            ),
            Source = list(
              "string"
            )
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$search_resources(
      AuthenticationToken = "string",
      QueryText = "string",
      QueryScopes = list(
        "NAME"|"CONTENT"
      ),
      OrganizationId = "string",
      AdditionalResponseFields = list(
        "WEBURL"
      ),
      Filters = list(
        TextLocales = list(
          "AR"|"BG"|"BN"|"DA"|"DE"|"CS"|"EL"|"EN"|"ES"|"FA"|"FI"|"FR"|"HI"|"HU"|"ID"|"IT"|"JA"|"KO"|"LT"|"LV"|"NL"|"NO"|"PT"|"RO"|"RU"|"SV"|"SW"|"TH"|"TR"|"ZH"|"DEFAULT"
        ),
        ContentCategories = list(
          "IMAGE"|"DOCUMENT"|"PDF"|"SPREADSHEET"|"PRESENTATION"|"AUDIO"|"VIDEO"|"SOURCE_CODE"|"OTHER"
        ),
        ResourceTypes = list(
          "FOLDER"|"DOCUMENT"|"COMMENT"|"DOCUMENT_VERSION"
        ),
        Labels = list(
          "string"
        ),
        Principals = list(
          list(
            Id = "string",
            Roles = list(
              "VIEWER"|"CONTRIBUTOR"|"OWNER"|"COOWNER"
            )
          )
        ),
        AncestorIds = list(
          "string"
        ),
        SearchCollectionTypes = list(
          "OWNED"|"SHARED_WITH_ME"
        ),
        SizeRange = list(
          StartValue = 123,
          EndValue = 123
        ),
        CreatedRange = list(
          StartValue = as.POSIXct(
            "2015-01-01"
          ),
          EndValue = as.POSIXct(
            "2015-01-01"
          )
        ),
        ModifiedRange = list(
          StartValue = as.POSIXct(
            "2015-01-01"
          ),
          EndValue = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      OrderBy = list(
        list(
          Field = "RELEVANCE"|"NAME"|"SIZE"|"CREATED_TIMESTAMP"|"MODIFIED_TIMESTAMP",
          Order = "ASC"|"DESC"
        )
      ),
      Limit = 123,
      Marker = "string"
    )
