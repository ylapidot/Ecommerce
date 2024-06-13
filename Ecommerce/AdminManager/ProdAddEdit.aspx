<%@ Page Title="" Language="C#" MasterPageFile="~/AdminManager/BackAdmin.Master" ValidateRequest="false" AutoEventWireup="true" CodeBehind="ProdAddEdit.aspx.cs" Inherits="Ecommerce.AdminManager.ProdAddEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCnt" runat="server">
     <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">ניהול מוצרים</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          הוספה / עריכת מוצר
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">  
                                    <asp:HiddenField ID="HidPid" runat="server" Value="-1" />
                                        <div class="form-group">
                                            <label>שם המוצר</label>
                                            <asp:TextBox ID="TxtPname" Class="form-control" runat="server" placeholder="נא הזן שם מוצר" />                                           
                                        </div>
                                    <div class="form-group">
                                            <label>מחיר</label>
                                            <asp:TextBox ID="TxtPrice" Class="form-control" runat="server" placeholder="נא הזן מחיר" />                                           
                                        </div>
                                    <div class="form-group">
                                            <label>תיאור המוצר</label>
                                            <asp:TextBox ID="TxtPdesc" Class="form-control" runat="server" TextMode="MultiLine" Rows="10" Columns="40" placeholder="נא הזן תיאור" />                                           
                                        </div>
                                    <div class="form-group">
                                            
                                            <asp:Image ID="ImgPicname" Class="form-control" runat="server" />                                           
                                        </div>
                                     <div class="form-group">
                                            <label>תמונת מוצר</label>
                                           <asp:FileUpload ID="UploadPic" runat="server" />
                                        </div>
                                      
                                        <asp:button ID="BtnSave" runat="server"  class="btn btn-primary" onclick="BtnSave_Click" Text="שמירה"/>
                                      
                                   
                                </div>
                               
                               
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="UnderFooter" runat="server">
    <script src="https://cdn.ckeditor.com/ckeditor5/41.4.2/classic/ckeditor.js"></script>
    <script>
    ClassicEditor
        .create(document.querySelector('#MainCnt_TxtPdesc'),
            {
               
                licenseKey: '',
                language: 'he',
                toolbar: {
                    shouldNotGroupWhenFull: true,
                    items: [
                        // --- Document-wide tools ----------------------------------------------------------------------
                        'undo',
                        'redo',
                        '|',
                        'sourceEditing',
                        'showBlocks',
                        '|',
                        'importWord',
                        'exportWord',
                        'exportPdf',
                        '|',
                        'findAndReplace',
                        'selectAll',
                        'wproofreader',
                        '|',

                        // --- "Insertables" ----------------------------------------------------------------------------
                        // 'insertTemplate',
                        'link',
                        'insertImage',
                        /* You must provide a valid token URL in order to use the CKBox application.
                        After registering to CKBox, the fastest way to try out CKBox is to use the development token endpoint:
                        https://ckeditor.com/docs/ckbox/latest/guides/configuration/authentication.html#token-endpoint*/
                        // 'ckbox',
                        'insertTable',
                        'blockQuote',
                        'mediaEmbed',
                        'codeBlock',
                        'htmlEmbed',
                        'pageBreak',
                        'horizontalLine',
                        '-',

                        // --- Block-level formatting -------------------------------------------------------------------
                        'heading',
                        'style',
                        '|',

                        // --- Basic styles, font and inline formatting -------------------------------------------------------
                        'bold',
                        'italic',
                        'underline',
                        'strikethrough',
                        'superscript',
                        'subscript',
                        {
                            label: 'Basic styles',
                            icon: 'text',
                            items: [
                                'fontSize',
                                'fontFamily',
                                'fontColor',
                                'fontBackgroundColor',
                                'code',
                                '|',
                                'textPartLanguage',
                                '|',
                            ],
                        },
                        'removeFormat',
                        '|',

                        // --- Text alignment ---------------------------------------------------------------------------
                        'alignment',
                        '|',

                        // --- Lists and indentation --------------------------------------------------------------------
                        'bulletedList',
                        'numberedList',
                        'todoList',
                        '|',
                        'outdent',
                        'indent',
                    ],
                },
               
                fontFamily: {
                    supportAllValues: true,
                },
                fontSize: {
                    options: [10, 12, 14, 'default', 18, 20, 22],
                    supportAllValues: true,
                },
             
                heading: {
                    options: [
                        { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                        {
                            model: 'heading1',
                            view: 'h1',
                            title: 'Heading 1',
                            class: 'ck-heading_heading1',
                        },
                        {
                            model: 'heading2',
                            view: 'h2',
                            title: 'Heading 2',
                            class: 'ck-heading_heading2',
                        },
                        {
                            model: 'heading3',
                            view: 'h3',
                            title: 'Heading 3',
                            class: 'ck-heading_heading3',
                        },
                        {
                            model: 'heading4',
                            view: 'h4',
                            title: 'Heading 4',
                            class: 'ck-heading_heading4',
                        },
                        {
                            model: 'heading5',
                            view: 'h5',
                            title: 'Heading 5',
                            class: 'ck-heading_heading5',
                        },
                        {
                            model: 'heading6',
                            view: 'h6',
                            title: 'Heading 6',
                            class: 'ck-heading_heading6',
                        },
                    ],
                },
                htmlEmbed: {
                    showPreviews: true,
                },
                htmlSupport: {
                    allow: [
                        // Enables all HTML features.
                        {
                            name: /.*/,
                            attributes: true,
                            classes: true,
                            styles: true,
                        },
                    ],
                    disallow: [
                        {
                            attributes: [
                                { key: /.*/, value: /data:(?!image\/(png|jpeg|gif|webp))/i },
                            ],
                        },
                    ],
                },
                image: {
                    styles: ['alignCenter', 'alignLeft', 'alignRight'],
                    resizeOptions: [
                        {
                            name: 'resizeImage:original',
                            label: 'Default image width',
                            value: null,
                        },
                        {
                            name: 'resizeImage:50',
                            label: '50% page width',
                            value: '50',
                        },
                        {
                            name: 'resizeImage:75',
                            label: '75% page width',
                            value: '75',
                        },
                    ],
                    toolbar: [
                        'imageTextAlternative',
                        'toggleImageCaption',
                        '|',
                        'imageStyle:inline',
                        'imageStyle:wrapText',
                        'imageStyle:breakText',
                        'imageStyle:side',
                        '|',
                        'resizeImage',
                    ],
                    insert: {
                        integrations: ['url'],
                    },
                },
                importWord: {
                    tokenUrl: false,
                    defaultStyles: true,
                },
                list: {
                    properties: {
                        styles: true,
                        startIndex: true,
                        reversed: true,
                    },
                },
                link: {
                    decorators: {
                        toggleDownloadable: {
                            mode: 'manual',
                            label: 'Downloadable',
                            attributes: {
                                download: 'file',
                            },
                        },
                    },
                    addTargetToExternalLinks: true,
                    defaultProtocol: 'https://',
                },
               
                placeholder: 'Type or paste your content here!',
                style: {
                    definitions: [
                        {
                            name: 'Title',
                            element: 'h1',
                            classes: ['document-title'],
                        },
                        {
                            name: 'Subtitle',
                            element: 'h2',
                            classes: ['document-subtitle'],
                        },
                        {
                            name: 'Callout',
                            element: 'p',
                            classes: ['callout'],
                        },
                        {
                            name: 'Side quote',
                            element: 'blockquote',
                            classes: ['side-quote'],
                        },
                        {
                            name: 'Needs clarification',
                            element: 'span',
                            classes: ['needs-clarification'],
                        },
                        {
                            name: 'Wide spacing',
                            element: 'span',
                            classes: ['wide-spacing'],
                        },
                        {
                            name: 'Small caps',
                            element: 'span',
                            classes: ['small-caps'],
                        },
                        {
                            name: 'Code (dark)',
                            element: 'pre',
                            classes: ['stylish-code', 'stylish-code-dark'],
                        },
                        {
                            name: 'Code (bright)',
                            element: 'pre',
                            classes: ['stylish-code', 'stylish-code-bright'],
                        },
                    ],
                },
                table: {
                    contentToolbar: [
                        'tableColumn',
                        'tableRow',
                        'mergeTableCells',
                        'tableProperties',
                        'tableCellProperties',
                        'toggleTableCaption',
                    ],
                }
            }
    ).then(editor => {
        console.log(Array.from(editor.ui.componentFactory.names()));
    })
        .catch( error => {
            console.error( error );
        } );
    </script>
</asp:Content>
