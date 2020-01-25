import 'package:genius/app/shared/repositories/record_repository.dart';
import 'package:mobx/mobx.dart';
part 'genius_controller.g.dart';

class GeniusController = _GeniusControllerBase with _$GeniusController;

abstract class _GeniusControllerBase with Store {

  @observable
  int _contador = 0;
  @observable
  int _record = 0;
  @observable
  int _timer = 0;

  @computed
  int get contador => this._contador;
  @computed
  int get record => this._record;
  @computed
  int get timer => this._timer;

  RecordRepository recordRepository = RecordRepository();

  _GeniusControllerBase() {
    this.reset();
    //this.getRecord();
  }

  @action
  getRecord() async{
    int _auxRecord=0;
    _auxRecord = await recordRepository.getRecord();
    this._record=_auxRecord;
  }

  @action
  setRecord(){
    if(this._record==null || this.contador>this._record){
      this._record=this.contador;
      recordRepository.setRecord(this._record);
    }
  }

  @action
  incrementaContador() {
    this.reinicarTempo(10);
    this._contador++;
  }

  @action
  reduzirTimer() {
    this._timer--;
  }

  @action
  start(int value) {
    this._timer = value;
  }

  @action
  reinicarTempo(int segundos) {
    this._timer = segundos;
  }

  @action
  reset() {
    if(this._contador>0)
      this.setRecord();
    this.reinicarTempo(0);
    this._contador = 0;
  }

  dispose() {}
}
