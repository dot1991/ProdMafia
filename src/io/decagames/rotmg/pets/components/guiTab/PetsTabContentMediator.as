package io.decagames.rotmg.pets.components.guiTab {
   import io.decagames.rotmg.pets.data.PetsModel;
   import robotlegs.bender.bundles.mvcs.Mediator;
   
   public class PetsTabContentMediator extends Mediator {
       
      
      [Inject]
      public var view:PetsTabContentView;
      
      [Inject]
      public var model:PetsModel;
      
      public function PetsTabContentMediator() {
         super();
      }
      
      override public function initialize() : void {
         this.view.init(this.model.getActivePet());
      }
      
      override public function destroy() : void {
      }
   }
}
