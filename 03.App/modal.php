<div class="modal-body">
          <div class="row">
            <div class="form-group col-12 col-md-6">
              <label for="nombre-producto">Nombre del Producto</label>
              <input type="text" class="form-control" id="nombre-producto" name="nombre-producto"  placeholder="Nombre del Producto" required autofocus>
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="Codigo-barra">Código de Barra</label>
              <input type="text" class="form-control" id="Codigo-barra" name="" placeholder="Código de Barra">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <select id="slc-categoria" class="selectpicker form-control" data-live-search="true" title="Categorias" data-style="btn-primary" multiple>
                <!--Informacion generada -->
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <select id="slc-impuesto" class="selectpicker form-control" data-live-search="true" title="Impuestos" data-style="btn-primary">
                <!--Informacion generada -->
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <select id="slc-presentacion" class="selectpicker form-control" data-live-search="true" title="Presentacion" data-style="btn-primary">
                <!--Informacion generada -->
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <select id="slc-tipo" class="selectpicker form-control" title="Tipo de Producto" data-style="btn-primary">
                <option onclick="showMedicamento(P)" value="P">Producto</option>
                <option onclick="showMedicamento(M)" value="M">Medicamento</option>
              </select>
            </div>

            <div id="laboratorio" class="form-group col-12 col-sm-6 col-md-6" style="display:none;">
              <select id="slc-laboratorio" class="selectpicker form-control" data-live-search="true" title="Laboratorio" data-style="btn-primary">
                <!--Informacion generada -->
              </select>
            </div>

          </div>
        </div>