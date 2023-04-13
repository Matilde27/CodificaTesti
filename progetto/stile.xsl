<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml">

<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">

    <html>
        <title>
            <xsl:value-of select="//tei:titleStmt/tei:title"/>
        </title>
        <link href="grafica.css" rel="stylesheet" type="text/css"/>
        
        <body>
            <h1 id="title">
                <xsl:value-of select="//tei:titleStmt/tei:title"/>
            </h1>
            
            <p id="subtitle">Le <i><xsl:value-of select="//tei:titleStmt/tei:title"/></i> sono una testimonianza di <xsl:value-of select="//tei:titleStmt/tei:author"/> sul campo di concentramento di Ferramonti a Tarsia, un comune italiano nella provincia di Cosenza, in Calabria.</p>

            <div id="int">
                
                <p>
                    <xsl:value-of select="//tei:sourceDesc/tei:msDesc/tei:history/tei:provenance"/>
                    <br/>
                    <xsl:value-of select="//tei:sourceDesc/tei:msDesc/tei:history/tei:acquisition"/>
                </p>

                <h3>Informazioni</h3>
                <p>La testimonianza è una <xsl:value-of select="//tei:publicationStmt/tei:availability/tei:p"/> disponibile sulla <a href="http://digital-library.cdec.it/cdec-web/"><xsl:value-of select="//tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:repository"/></a> del <i><xsl:value-of select="//tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:institution"/></i>, un istituto storico culturale indipendente con sede a <xsl:value-of select="//tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:settlement"/>.
                <br/>Essa fa parte della collezione <xsl:value-of select="//tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:collection[@n='nome']/tei:persName"/>, e in particolare del capitolo <i><xsl:value-of select="//tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:collection[@n='capitolo']"/></i>.</p>
                
                <p><xsl:value-of select="//tei:sourceDesc/tei:msDesc/tei:history/tei:origin/tei:p[@n='single']"/>
                <br/><xsl:value-of select="//tei:sourceDesc/tei:msDesc/tei:history/tei:origin/tei:p[@n='collection']"/></p>

                <h3>Descrizione</h3>
                <p><xsl:value-of select="//tei:sourceDesc/tei:msDesc/tei:history/tei:summary"/>:</p>
                <ul>
                    <li><a href="#appello"><xsl:value-of select="//tei:msItem[@n='t1']/tei:title"/></a></li>
                        <ul>
                            <li><xsl:value-of select="//tei:msItem[@n='t1']/tei:argument"/></li>
                                <ul>
                                    <li><a href="#go1"><xsl:value-of select="//tei:msItem[@n='t1']/tei:title"/> - pagina 1</a></li>
                                    <li><a href="#go2"><xsl:value-of select="//tei:msItem[@n='t1']/tei:title"/> - pagina 2</a></li>
                                </ul>
                        </ul>
                    <br/>
                    <li><a href="#posta"><xsl:value-of select="//tei:msItem[@n='t2']/tei:title"/></a></li>
                        <ul>
                            <li><xsl:value-of select="//tei:msItem[@n='t2']/tei:argument"/></li>
                                <ul>
                                    <li><a href="#go3"><xsl:value-of select="//tei:msItem[@n='t2']/tei:title"/> - pagina 1</a></li>
                                    <li><a href="#go3"><xsl:value-of select="//tei:msItem[@n='t2']/tei:title"/> - pagina 2</a></li>
                                    <li><a href="#go5"><xsl:value-of select="//tei:msItem[@n='t2']/tei:title"/> - pagina 3</a></li>
                                    <li><a href="#go6"><xsl:value-of select="//tei:msItem[@n='t2']/tei:title"/> - pagina 4</a></li>
                                    <li><a href="#go7"><xsl:value-of select="//tei:msItem[@n='t2']/tei:title"/> - pagina 5</a></li>
                                </ul>
                        </ul>
                </ul>

                <h3>Specifiche</h3>
                <p><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:supportDesc/tei:extent"/>
                <br/><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"/></p>
                
                <p><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:p[@n='s1']"/>
                <br/><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:p[@n='s2']"/>
                <br/><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:p[@n='s3']"/></p>
                
                <p><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:p[@n='s4']"/>
                <br/><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:p[@n='s5']"/></p>

                <p><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:supportDesc/tei:foliation/tei:p[@n='num']"/>
                <br/><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:supportDesc/tei:foliation/tei:p[@n='gloss']"/></p>

                <p><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:layoutDesc/tei:layout"/>
                <br/><xsl:value-of select="//tei:physDesc/tei:typeDesc/tei:typeNote"/></p>

                <p><xsl:value-of select="//tei:physDesc/tei:handDesc/tei:handNote[@n='h1']/tei:p[@n='corr']"/>
                <br/><xsl:value-of select="//tei:physDesc/tei:handDesc/tei:handNote[@n='h1']/tei:p[@n='hand1']"/>
                <br/><xsl:value-of select="//tei:physDesc/tei:handDesc/tei:handNote[@n='h2']/tei:p[@n='hand2']"/></p>
            </div>

            <div class="legenda" id="leg1">
            <h3>Legenda: marcature testuali</h3>
                <span class="subst">Sostituzione di un <span class="del">termine cancellato</span> con un <span class="add">termine aggiunto</span></span>
                <br/>
                <span class="subst">Sostituzione di un termine cancellato e illeggibile, reso con <span class="del"><span class="gap">xxxxx</span></span></span>
                <br/>
                <span class="del">Semplice cancellazione</span>
                <br/>
                Cancellazione di un termine illeggibile, resa con <span class="del"><span class="gap">xxxxx</span></span>
                <br/>
                <span class="add">Semplice aggiunta</span>
                <br/>
                <span class="short">Evidenziazione: <span class="abbr">abbreviazione</span> e relativa <span class="expan">espansione</span></span>
                <br/>
                <span class="retrace">Sovrainchiostrazione</span>
                <br/>
                <span class="new">Modifica: <span class="sic">termine ritenuto errato</span> e relativa <span class="corr">correzione</span></span>
                <br/>
                <span class="faded">Restituzione di un termine sbiadito</span>
                <br/>
                <span class="omitted">Inserimento di un termine omesso</span>
                <br/>
                Lingua straniera: <span class="foreign">termine straniero</span> e sua <span class="trad">traduzione</span>
                <br/>
                <span class="term">Termine tecnico</span>
                <br/>
                <span class="distinct">Termine ritenuto non comune</span>
                <br/>
                <span class="metaspan">?</span> Passaggio non chiaro
                <br/>
                <span class="underline">Sottolineatura</span>
                <br/>
                <span class="wavy">Sottolineatura ondulata</span>
            </div>
            
            <div class="legenda" id="leg2">
                <h3>Dettagli: persone nominate</h3>
                <h4>Riferimenti singoli</h4>
                <abbr class="person" title="Milite"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='milite']/tei:note/tei:label"/></abbr><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='milite']/tei:note/tei:desc"/>
                <br/>
                <abbr class="person" title="Bambina"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='bambina']/tei:note/tei:label"/></abbr><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='bambina']/tei:note/tei:desc"/>
                <br/>
                <abbr class="person" title="Bambino"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='bambino']/tei:note/tei:label"/></abbr><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='bambino']/tei:note/tei:desc"/>
                <br/>
                <abbr class="person" title="Funzionario"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='funzionario']/tei:note/tei:label"/></abbr><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='funzionario']/tei:note/tei:desc"/>
                <br/>
                <abbr class="person" title="Corriere"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='corriere']/tei:note/tei:label"/></abbr><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='corriere']/tei:note/tei:desc"/>
                <br/>
                <abbr class="person" title="Viennese"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='viennese']/tei:note/tei:label"/></abbr><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='viennese']/tei:note/tei:desc"/>
                <br/>
                <abbr class="person" title="Messo"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='messo']/tei:note/tei:label"/></abbr><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='messo']/tei:note/tei:desc"/>
                <br/>
                <abbr class="person" title="Compagno"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='compagno']/tei:note/tei:label"/></abbr><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='compagno']/tei:note/tei:desc"/>
                <br/>
                <abbr class="person" title="Profugo"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='profugo']/tei:note/tei:label"/></abbr><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='profugo']/tei:note/tei:desc"/>
                <br/>
                <h4>Riferimenti collettivi</h4>
                <abbr class="personGrp" title="Lettori"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='lettore']/tei:note/tei:label"/></abbr><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='lettore']/tei:note/tei:desc"/>
                <br/>
                <abbr class="personGrp" title="Compagni"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='compagni']/tei:note/tei:label"/></abbr><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='compagni']/tei:note/tei:desc"/>
                <br/>
                <abbr class="personGrp" title="Capi"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='capi']/tei:note/tei:label"/></abbr><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='capi']/tei:note/tei:desc"/>
                <br/>
                <abbr class="personGrp" title="Ronda"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='ronda']/tei:note/tei:label"/></abbr><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='ronda']/tei:note/tei:desc"/>
                <br/>
                <abbr class="personGrp" title="Famiglia"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='famiglia']/tei:note/tei:label"/></abbr><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='famiglia']/tei:note/tei:desc"/>
                <br/>
                <abbr class="personGrp" title="Grossisti"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='grossista']/tei:note/tei:label"/></abbr><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='grossista']/tei:note/tei:desc"/>
                <br/>
                <abbr class="personGrp" title="Rivenditori"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='rivenditore']/tei:note/tei:label"/></abbr><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='rivenditore']/tei:note/tei:desc"/>
            </div>

            <div class="pages">
                <a name="appello"/>
                <a name="go1"/>
                <div id="p1">
                    <div class="int">
                        <h2><xsl:value-of select="//tei:msItem[@n='t1']/tei:title"/> - pagina 1</h2>
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="//tei:facsimile/tei:surface/tei:graphic[@xml:id='pagina1']/@url"/>
                            </xsl:attribute>
                            <xsl:attribute name="id">pag1</xsl:attribute>
                        </xsl:element>
                    </div>
                    <div class="desc">
                        <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='1']"/>
                    </div>
                </div>

                <hr/>
                
                <a name="go2"/>
                <div id="p2">
                    <div class="int">
                        <h2><xsl:value-of select="//tei:msItem[@n='t1']/tei:title"/> - pagina 2</h2>
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="//tei:facsimile/tei:surface/tei:graphic[@xml:id='pagina2']/@url"/>
                            </xsl:attribute>
                            <xsl:attribute name="id">pag2</xsl:attribute>
                        </xsl:element>
                    </div>
                    <div class="desc">
                        <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='2']"/>
                    </div>
                    <br/>
                </div>

                <hr/>

                <a name="posta"/>
                <a name="go3"/>
                <div id="p3">
                    <div class="int">
                        <h2><xsl:value-of select="//tei:msItem[@n='t2']/tei:title"/> - pagina 1</h2>
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="//tei:facsimile/tei:surface/tei:graphic[@xml:id='pagina3']/@url"/>
                            </xsl:attribute>
                            <xsl:attribute name="id">pag3</xsl:attribute>
                        </xsl:element>
                    </div>
                    <div class="desc">
                        <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='3']"/>
                    </div>
                </div>

                <hr/>
                
                <a name="go4"/>
                <div id="p4">
                    <div class="int">
                        <h2><xsl:value-of select="//tei:msItem[@n='t2']/tei:title"/> - pagina 2</h2>
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="//tei:facsimile/tei:surface/tei:graphic[@xml:id='pagina4']/@url"/>
                            </xsl:attribute>
                            <xsl:attribute name="id">pag4</xsl:attribute>
                        </xsl:element>
                    </div>
                    <div class="desc">
                        <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='4']"/>
                    </div>
                </div>

                <hr/>
                
                <a name="go5"/>
                <div id="p5">
                    <div class="int">
                        <h2><xsl:value-of select="//tei:msItem[@n='t2']/tei:title"/> - pagina 3</h2>
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="//tei:facsimile/tei:surface/tei:graphic[@xml:id='pagina5']/@url"/>
                            </xsl:attribute>
                            <xsl:attribute name="id">pag5</xsl:attribute>
                        </xsl:element>
                    </div>
                    <div class="desc">
                        <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='5']"/>
                    </div>
                </div>

                <hr/>
               
                <a name="go6"/>
                <div id="p6">
                    <div class="int">
                        <h2><xsl:value-of select="//tei:msItem[@n='t2']/tei:title"/> - pagina 4</h2>
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="//tei:facsimile/tei:surface/tei:graphic[@xml:id='pagina6']/@url"/>
                            </xsl:attribute>
                            <xsl:attribute name="id">pag6</xsl:attribute>
                        </xsl:element>
                    </div>
                    <div class="desc">
                        <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='6']"/>
                    </div>
                </div>

                <hr/>
                
                <a name="go7"/>
                <div id="p7">
                    <div class="int">
                        <h2><xsl:value-of select="//tei:msItem[@n='t2']/tei:title"/> - pagina 5</h2>
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="//tei:facsimile/tei:surface/tei:graphic[@xml:id='pagina7']/@url"/>
                            </xsl:attribute>
                            <xsl:attribute name="id">pag7</xsl:attribute>
                        </xsl:element>
                    </div>
                    <div class="desc">
                        <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='7']"/>
                    </div>
                 </div>

            </div>
        
            <div id="note">
                <h3>Note sulla codifica</h3>
                <p><xsl:value-of select="//tei:encodingDesc/tei:p[@n='e1']/tei:span"/><a href="https://tei-c.org/"><xsl:value-of select="//tei:encodingDesc/tei:p[@n='e1']/tei:orgName"/></a>
                <br/><xsl:value-of select="//tei:encodingDesc/tei:p[@n='e2']"/></p>
                
                <p><xsl:value-of select="//tei:encodingDesc/tei:p[@n='e3']"/>
                <br/><xsl:value-of select="//tei:encodingDesc/tei:p[@n='e4']"/></p>
        
                
                <h3>Note sulla traduzione</h3>
                <p>La traduzione in italiano delle parole o frasi in lingua tedesca è stata effettuata tramite l'ausilio di <a href="https://translate.google.it/?hl=it">Google Traduttore</a>.</p>
                
                <p>Di seguito è presente il <xsl:value-of select="//tei:standOff/tei:list/tei:head"/> del testo, dal tedesco all'italiano:
                    <ul>
                        <li>"<span class="foreign"><xsl:value-of select="//tei:standOff/tei:list/tei:label/tei:term[@ref='#trara']"/></span>" significa "<span class="trad"><xsl:value-of select="//tei:standOff/tei:list/tei:item/tei:gloss[@target='#trara']"/></span>";</li>
                        <br/>
                        <li>"<span class="foreign"><xsl:value-of select="//tei:standOff/tei:list/tei:label/tei:term[@ref='#illus']"/></span>" significa "<span class="trad"><xsl:value-of select="//tei:standOff/tei:list/tei:item/tei:gloss[@target='#illus']"/></span>".</li>
                    </ul>
                </p>
            </div>  

        </body>

        <footer>
            
            <p>Testimonianza codificata per il progetto di Codifica di testi &#40;A.A. 2021-2022&#41; del corso di Informatica Umanistica dell'Università di Pisa.</p>
            
            <p><xsl:value-of select="//tei:editionStmt/tei:edition"/></p>
            
            <p><xsl:value-of select="//tei:editionStmt/tei:respStmt/tei:resp"/></p>
            <p><xsl:value-of select="//tei:editionStmt/tei:respStmt/tei:name/tei:persName[@xml:id='MC']"/> &#38; <xsl:value-of select="//tei:editionStmt/tei:respStmt/tei:name/tei:persName[@xml:id='SP']"/></p>
            
        </footer>
    </html>

</xsl:template>

<!-- divisione righe -->
<xsl:template match="//tei:lb">
    <xsl:element name="span">
        <xsl:attribute name="class">lb</xsl:attribute>
        <xsl:value-of select="."/>
        <br/>
    </xsl:element>
</xsl:template>

<!-- cancellazioni del -->
<xsl:template match="//tei:del">
    <xsl:element name="span">
        <xsl:attribute name="class">del</xsl:attribute>            
        <!-- testo illeggibile gap -->
        <xsl:if test="tei:gap">
            <xsl:element name="span">
                <xsl:attribute name="class">gap</xsl:attribute>
                <xsl:text>xxxxx</xsl:text>
            </xsl:element>
        </xsl:if>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- aggiunte add -->
<xsl:template match="//tei:add">
    <xsl:element name="span">
        <xsl:attribute name="class">add</xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- sostituzioni subst e person bambino-->
<xsl:template match="//tei:subst">
    <xsl:element name="span">
    <xsl:attribute name="class">subst</xsl:attribute>
        <xsl:element name="span">
            <xsl:attribute name="class">del</xsl:attribute>
            <!-- testo illeggibile gap -->
            <xsl:if test="tei:del/tei:gap">
                <xsl:element name="span">
                    <xsl:attribute name="class">gap</xsl:attribute>
                    <xsl:text>xxxxx</xsl:text>
                </xsl:element>
            </xsl:if>
            <xsl:value-of select="tei:del" />
        </xsl:element>
        <xsl:element name="span">
            <xsl:attribute name="class">add</xsl:attribute>
            <xsl:choose>
                <!-- person bambino -->
                <xsl:when test="tei:add/tei:ref[@target='#bambino']">
                    <xsl:element name="abbr">
                        <xsl:attribute name="class">person</xsl:attribute>
                        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='bambino']/tei:note"/></xsl:attribute>
                        <xsl:value-of select="tei:add" />
                    </xsl:element>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="tei:add" />   
                </xsl:otherwise>
            </xsl:choose>
        </xsl:element>
    </xsl:element>
</xsl:template>

<!-- choice "new" per sic e corr -->
<xsl:template match="//tei:choice[@n='new']">
    <xsl:element name="span">
    <xsl:attribute name="class">new</xsl:attribute>
        <xsl:element name="span">
            <xsl:attribute name="class">sic</xsl:attribute>
            <xsl:value-of select="tei:sic" />
        </xsl:element>
        <xsl:element name="span">
            <xsl:attribute name="class">corr</xsl:attribute>
            <xsl:value-of select="tei:corr" />
        </xsl:element>
    </xsl:element>
</xsl:template>

<!-- choice "short" per abbr e expan -->
<xsl:template match="//tei:choice[@n='short']">
    <xsl:element name="span">
    <xsl:attribute name="class">short</xsl:attribute>
        <xsl:element name="span">
            <xsl:attribute name="class">abbr</xsl:attribute>
            <xsl:value-of select="tei:abbr"/>
        </xsl:element>
        <xsl:element name="span">
            <xsl:attribute name="class">expan</xsl:attribute>
            <xsl:value-of select="tei:expan" />
        </xsl:element>
    </xsl:element>
</xsl:template>

<!-- termini term -->
<xsl:template match="//tei:term">
    <xsl:element name="span">
        <xsl:attribute name="class">term</xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- termini supplied faded -->
<xsl:template match="//tei:supplied[@reason='faded-ink']">
    <xsl:element name="span">
        <xsl:attribute name="class">faded</xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- termini supplied omitted-in-original -->
<xsl:template match="//tei:supplied[@reason='omitted-in-original']">
    <xsl:element name="span">
        <xsl:attribute name="class">omitted</xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- traduzione foreign -->
<xsl:template match="//tei:foreign">
    <xsl:element name="span">
        <xsl:attribute name="class">foreign</xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- sottolineatura underline -->
<xsl:template match="*[@rend='underline']">
    <xsl:element name="span">
        <xsl:attribute name="class">underline</xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- sottolineatura wavy_underline -->
<xsl:template match="*[@rend='wavy_underline']">
    <xsl:element name="span">
        <xsl:attribute name="class">wavy</xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- marcature retrace -->
<xsl:template match="//tei:retrace">
    <xsl:element name="span">
        <xsl:attribute name="class">retrace</xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- termini non preferiti distinct -->
<xsl:template match="//tei:distinct">
    <xsl:element name="span">
        <xsl:attribute name="class">distinct</xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- span con metamark -->
<xsl:template match="//tei:span">
    <xsl:element name="span">
        <xsl:attribute name="class">metaspan</xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- person "agente" -->
<xsl:template match="//tei:ref[@target='#agente']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">person</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='agente']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- person "milite" -->
<xsl:template match="//tei:ref[@target='#milite']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">person</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='milite']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- person "bambina" -->
<xsl:template match="//tei:ref[@target='#bambina']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">person</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='bambina']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- person "bambino" -->
<xsl:template match="//tei:ref[@target='#bambino']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">person</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='bambino']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- person "funzionario" -->
<xsl:template match="//tei:ref[@target='#funzionario']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">person</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='funzionario']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- person "corriere" -->
<xsl:template match="//tei:ref[@target='#corriere']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">person</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='corriere']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- person "viennese" -->
<xsl:template match="//tei:ref[@target='#viennese']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">person</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='viennese']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- person "messo" -->
<xsl:template match="//tei:ref[@target='#messo']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">person</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='messo']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- person "compagno" -->
<xsl:template match="//tei:ref[@target='#compagno']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">person</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='compagno']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- person "profugo" -->
<xsl:template match="//tei:ref[@target='#profugo']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">person</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:person[@xml:id='profugo']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- personGrp "compagni" -->
<xsl:template match="//tei:ref[@target='#compagni']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">personGrp</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='compagni']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- personGrp "capi" -->
<xsl:template match="//tei:ref[@target='#capi']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">personGrp</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='capi']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- personGrp "ronda" -->
<xsl:template match="//tei:ref[@target='#ronda']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">personGrp</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='ronda']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- personGrp "famiglia" -->
<xsl:template match="//tei:ref[@target='#famiglia']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">personGrp</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='famiglia']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- personGrp "grossista" -->
<xsl:template match="//tei:ref[@target='#grossista']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">personGrp</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='grossista']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- personGrp "rivenditore" -->
<xsl:template match="//tei:ref[@target='#rivenditore']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">personGrp</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='rivenditore']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

<!-- personGrp "lettore" -->
<xsl:template match="//tei:ref[@target='#lettore']">
    <xsl:element name="abbr">
        <xsl:attribute name="class">personGrp</xsl:attribute>
        <xsl:attribute name="title"><xsl:value-of select="//tei:profileDesc/tei:particDesc/tei:listPerson/tei:personGrp[@xml:id='lettore']/tei:note"/></xsl:attribute>
        <xsl:value-of select="."/>
    </xsl:element>
</xsl:template>

</xsl:stylesheet>