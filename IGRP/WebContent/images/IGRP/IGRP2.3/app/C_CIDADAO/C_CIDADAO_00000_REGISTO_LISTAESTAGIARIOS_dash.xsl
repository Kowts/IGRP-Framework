<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" omit-xml-declaration="yes" encoding="ISO-8859-1" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
  <xsl:template match="/">
    <html><!--XSL Generator (RED/DIM 2015)--><head><!--HOME-HEADER--><xsl:call-template name="home-header"/>
      </head>
      <body class="bodyColor">
        <div class="IGRP_overlay"/><!--HOME TOP--><xsl:call-template name="home-top-main"/><!--HOME--><div id="igrp-bodyPage"><!--HOME LEFT--><xsl:if test="not(rows/target) or rows/target!='_blank'"><!--MENU--><div class="bodyPageLeft">
              <xsl:apply-templates mode="slide-menu" select="document(rows/slide-menu/@file)"/>
            </div>
          </xsl:if><!--HOME RIGTH--><div class="bodyPageRigth"><!-- START YOUR CODE HERE --><!-- SHOW TABLET AND MOBILE TITLE --><div class="box-head showTabMobile">
              <xsl:value-of select="rows/content/title"/>
            </div><!-- SHOW NOTIFICATION MESSAGES--><xsl:apply-templates mode="notif_messages" select="rows/content/messages"/>
            <form action="#" method="post" id="formular_default" name="formular_default" class="default_filter"><!-- SHOW HIDDEN--><xsl:apply-templates mode="form-hidden" select="rows/content/filter/value"/>
              <xsl:apply-templates mode="form-hidden" select="rows/content/form/value"/><!-- START FILTER--><div class="box-content resetPadding">
                <div class="col">
                  <xsl:if test="rows/content/filter/label/nome">
                    <div class="col-1-4 item" item-name="nome">
                      <div class="igrp_item text">
                        <label>
                          <xsl:value-of select="rows/content/filter/label/nome" disable-output-escaping="yes"/>
                        </label>
                        <input type="text" name="{rows/content/filter/value/nome/@name}" value="{rows/content/filter/value/nome}" class="text" maxlength="30">
                          <xsl:call-template name="FIELD_validator">
                            <xsl:with-param name="field" select="rows/content/filter/label/nome"/>
                          </xsl:call-template>
                        </input>
                        <div class="_clear"/>
                      </div>
                      <div class="_clear"/>
                    </div>
                  </xsl:if>
                  <xsl:if test="rows/content/filter/label/bi">
                    <div class="col-1-4 item" item-name="bi">
                      <div class="igrp_item text">
                        <label>
                          <xsl:value-of select="rows/content/filter/label/bi" disable-output-escaping="yes"/>
                        </label>
                        <input type="text" name="{rows/content/filter/value/bi/@name}" value="{rows/content/filter/value/bi}" class="text" maxlength="30">
                          <xsl:call-template name="FIELD_validator">
                            <xsl:with-param name="field" select="rows/content/filter/label/bi"/>
                          </xsl:call-template>
                        </input>
                        <div class="_clear"/>
                      </div>
                      <div class="_clear"/>
                    </div>
                  </xsl:if>
                  <xsl:if test="rows/content/filter/label/departamento">
                    <div class="col-1-4 item" item-name="departamento">
                      <div class="igrp_item select">
                        <label>
                          <xsl:value-of select="rows/content/filter/label/departamento" disable-output-escaping="yes"/>
                        </label>
                        <select name="{rows/content/filter/list/departamento/@name}" chosen="select" data-placeholder="{rows/content/filter/list/departamento/option[position() = 1]}" class="select">
                          <xsl:call-template name="FIELD_validator">
                            <xsl:with-param name="field" select="rows/content/filter/label/departamento"/>
                          </xsl:call-template>
                          <option value=""/>
                          <xsl:for-each select="rows/content/filter/list/departamento/option[position() != 1]">
                            <option value="{value}">
                              <xsl:if test="@selected='true'">
                                <xsl:attribute name="selected">selected</xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="text"/>
                            </option>
                          </xsl:for-each>
                        </select>
                        <div class="_clear"/>
                      </div>
                      <div class="_clear"/>
                    </div>
                  </xsl:if>
                  <div class="_clear"/>
                </div><!--START TOOL BAR FILTER--><xsl:apply-templates mode="button-bar" select="rows/content/filter/tools-bar"/><!--END TOOL BAR FILTER--></div><!-- END FILTER--><!-- START TABELA--><div class="box-content resetPadding"><!--START TOOL BAR TABLE--><xsl:apply-templates mode="tools-bar" select="rows/content/table/tools-bar">
                  <xsl:with-param name="isTable" select="'true'"/>
                  <xsl:with-param name="rel" select="table"/>
                </xsl:apply-templates><!--END TOOL BAR TABLE--><div class="box-table table-responsive">
                  <div class="table-container"><!--  CONTEXT-MENU  --><xsl:apply-templates mode="context-menu" select="rows/content/table/context-menu">
                      <xsl:with-param name="contextId" select="'table'"/>
                    </xsl:apply-templates>
                    <table class="IGRP_table default-table" data-control="table">
                      <thead>
                        <tr>
                          <xsl:if test="rows/content/table/label/nome">
                            <th align="center">
                              <xsl:value-of select="rows/content/table/label/nome"/>
                            </th>
                          </xsl:if>
                          <xsl:if test="rows/content/table/label/bi">
                            <th align="center">
                              <xsl:value-of select="rows/content/table/label/bi"/>
                            </th>
                          </xsl:if>
                          <xsl:if test="rows/content/table/label/curso">
                            <th align="center">
                              <xsl:value-of select="rows/content/table/label/curso"/>
                            </th>
                          </xsl:if>
                          <xsl:if test="rows/content/table/label/universidade">
                            <th align="center">
                              <xsl:value-of select="rows/content/table/label/universidade"/>
                            </th>
                          </xsl:if>
                          <xsl:if test="rows/content/table/label/departamento">
                            <th align="center">
                              <xsl:value-of select="rows/content/table/label/departamento"/>
                            </th>
                          </xsl:if>
                          <xsl:if test="rows/content/table/label/total_por_departamento">
                            <th align="center">
                              <xsl:value-of select="rows/content/table/label/total_por_departamento"/>
                            </th>
                          </xsl:if>
                        </tr>
                      </thead>
                      <tbody>
                        <xsl:for-each select="rows/content/table/value/row[not(@total='yes')]">
                          <tr row="{position()}" class="IGRP_contextMenu">
                            <xsl:apply-templates mode="context-param" select="context-menu"/>
                            <xsl:if test="nome">
                              <td align="center" data-row="{position()}" data-title="{../../label/nome}">
                                <xsl:value-of select="nome"/>
                              </td>
                            </xsl:if>
                            <xsl:if test="bi">
                              <td align="center" data-row="{position()}" data-title="{../../label/bi}">
                                <xsl:value-of select="bi"/>
                              </td>
                            </xsl:if>
                            <xsl:if test="curso">
                              <td align="center" data-row="{position()}" data-title="{../../label/curso}">
                                <xsl:value-of select="curso"/>
                              </td>
                            </xsl:if>
                            <xsl:if test="universidade">
                              <td align="center" data-row="{position()}" data-title="{../../label/universidade}">
                                <xsl:value-of select="universidade"/>
                              </td>
                            </xsl:if>
                            <xsl:if test="departamento">
                              <td align="center" data-row="{position()}" data-title="{../../label/departamento}">
                                <xsl:value-of select="departamento"/>
                              </td>
                            </xsl:if>
                            <xsl:if test="total_por_departamento">
                              <td align="center" data-row="{position()}" data-title="{../../label/total_por_departamento}">
                                <xsl:value-of select="total_por_departamento"/>
                              </td>
                            </xsl:if>
                          </tr>
                        </xsl:for-each>
                      </tbody>
                      <tfoot>
                        <tr>
                          <xsl:if test="rows/content/table/label/nome">
                            <td align="center">
                              <xsl:value-of select="rows/content/table/value/row[@total='yes']/nome"/>
                            </td>
                          </xsl:if>
                          <xsl:if test="rows/content/table/label/bi">
                            <td align="center">
                              <xsl:value-of select="rows/content/table/value/row[@total='yes']/bi"/>
                            </td>
                          </xsl:if>
                          <xsl:if test="rows/content/table/label/curso">
                            <td align="center">
                              <xsl:value-of select="rows/content/table/value/row[@total='yes']/curso"/>
                            </td>
                          </xsl:if>
                          <xsl:if test="rows/content/table/label/universidade">
                            <td align="center">
                              <xsl:value-of select="rows/content/table/value/row[@total='yes']/universidade"/>
                            </td>
                          </xsl:if>
                          <xsl:if test="rows/content/table/label/departamento">
                            <td align="center">
                              <xsl:value-of select="rows/content/table/value/row[@total='yes']/departamento"/>
                            </td>
                          </xsl:if>
                          <xsl:if test="rows/content/table/label/total_por_departamento">
                            <td align="center">
                              <xsl:value-of select="rows/content/table/value/row[@total='yes']/total_por_departamento"/>
                            </td>
                          </xsl:if>
                        </tr>
                      </tfoot>
                    </table>
                  </div>
                </div>
              </div><!-- END TABELA--></form><!-- END YOUR CODE HERE --><div class="_clear"/>
          </div>
          <div class="_clear"/>
        </div><!--FOOTER PAGE--><div id="igrp-footerPage">
          <xsl:call-template name="footer"/>
        </div>
      </body>
    </html>
  </xsl:template>
  <xsl:include href="../../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=20150306"/>
  <xsl:include href="../../xsl/tmpl/IGRP-setAttribute.tmpl.xsl?v=20150306"/>
  <xsl:include href="../../xsl/tmpl/IGRP-slide-menu.tmpl.xsl?v=20150306"/>
  <xsl:include href="../../xsl/tmpl/IGRP-context.tmpl.xsl?v=20150306"/>
</xsl:stylesheet>